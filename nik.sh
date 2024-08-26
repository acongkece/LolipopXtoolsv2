function parse_nik() {
    local nik=$1
    if [[ $nik =~ ^[0-9]{16}$ ]]; then
        echo "NIK valid: $nik"
        
        
        local province=${nik:0:2}
        local city=${nik:2:2}
        local district=${nik:4:2}
        local birthdate=${nik:6:6}
        local unique_code=${nik:12:4}
        
        
        local day=${birthdate:0:2}
        local month=${birthdate:2:2}
        local year=${birthdate:4:2}
        
    
        if (( day > 40 )); then
            day=$((day - 40))
            gender="Perempuan"
        else
            gender="Laki-laki"
        fi
        
        
        year="19$year"
        
        echo "Provinsi: $province"
        echo "Kota/Kabupaten: $city"
        echo "Kecamatan: $district"
        echo "Tanggal Lahir: $day-$month-$year"
        echo "Jenis Kelamin: $gender"
        echo "Kode Unik: $unique_code"
    else
        echo "NIK tidak valid"
    fi
}
function main_menu() {
    echo "Masukkan NIK:"
    read nik
    parse_nik $nik
}

main_menu

