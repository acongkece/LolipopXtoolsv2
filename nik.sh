function parse_nik() {
    local nik=$1
    if [[ $nik =~ ^[0-9]{16}$ ]]; then
        echo "NIK valid: $nik"
        
        # Ekstrak informasi dari NIK
        local province=${nik:0:2}
        local city=${nik:2:2}
        local district=${nik:4:2}
        local birthdate=${nik:6:6}
        local unique_code=${nik:12:4}
        
        # Parsing tanggal lahir
        local day=${birthdate:0:2}
        local month=${birthdate:2:2}
        local year=${birthdate:4:2}
        
        # Jika hari lebih dari 40, berarti jenis kelamin perempuan
        if (( day > 40 )); then
            day=$((day - 40))
            gender="Perempuan"
        else
            gender="Laki-laki"
        fi
        
        # Asumsi tahun lahir antara 1900-1999
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

