<div class="row">
    <div class="col-md-12">
        <table id="table-persentase" width="100%" class="table table-striped table-bordered">
            <tr>
                <td colspan="6"><center>Dimensi</center></td>
            </tr>
            <tr>
                <td width="5%">1</td>
                <td width="30%">
                    Introvert
                    <span class="badge badge-{{($Introvert > $Extrovert)?'success':'danger'}}">{{ ($Introvert > $Extrovert) ? '1' : '2' }}</span>
                </td>
                <td>{{ $Introvert }} %</td>
                <td>{{ $Extrovert }} %</td>
                <td width="30%">
                    Extrovert
                    <span class="badge badge-{{($Introvert > $Extrovert)?'danger':'success'}}">{{ ($Introvert > $Extrovert) ? '2' : '1' }}</span>
                </td>
                <td width="20%">{{ ($Introvert+$Extrovert == 100) ? 'OK' : 'CEK ULANG' }}</td>
            </tr>
            <tr>
                <td width="5%">1</td>
                <td width="30%">
                    Sensing
                    <span class="badge badge-{{($Sensing > $Intuition)?'success':'danger'}}">{{ ($Sensing > $Intuition) ? '1' : '2' }}</span>
                </td>
                <td>{{ $Sensing }} %</td>
                <td>{{ $Intuition }} %</td>
                <td width="30%">
                    Intuition
                    <span class="badge badge-{{($Sensing > $Intuition)?'danger':'success'}}">{{ ($Sensing > $Intuition) ? '2' : '1' }}</span>
                </td>
                <td width="20%">{{ ($Sensing+$Intuition == 100) ? 'OK' : 'CEK ULANG' }}</td>
            </tr>
            <tr>
                <td width="5%">1</td>
                <td width="30%">
                    Thinking
                    <span class="badge badge-{{($Thinking > $Feeling)?'success':'danger'}}">{{ ($Thinking > $Feeling) ? '1' : '2' }}</span>
                </td>
                <td>{{ $Thinking }} %</td>
                <td>{{ $Feeling }} %</td>
                <td width="30%">
                    Feeling
                    <span class="badge badge-{{($Thinking > $Feeling)?'danger':'success'}}">{{ ($Thinking > $Feeling) ? '2' : '1' }}</span>
                </td>
                <td width="20%">{{ ($Thinking+$Feeling == 100) ? 'OK' : 'CEK ULANG' }}</td>
            </tr>
            <tr>
                <td width="5%">1</td>
                <td width="30%">
                    Judging
                    <span class="badge badge-{{($Judging > $Perceiving)?'success':'danger'}}">{{ ($Judging > $Perceiving) ? '1' : '2' }}</span>
                </td>
                <td>{{ $Judging }} %</td>
                <td>{{ $Perceiving }} %</td>
                <td width="30%">
                    Perceiving
                    <span class="badge badge-{{($Judging > $Perceiving)?'danger':'success'}}">{{ ($Judging > $Perceiving) ? '2' : '1' }}</span>
                </td>
                <td width="20%">{{ ($Judging+$Perceiving == 100) ? 'OK' : 'CEK ULANG' }}</td>
            </tr>
        </table>
    </div>
    <div class="col-md-12">
        <p style="color:blue;"><b>{{ $tipe_kepribadian->kode }} ({{ $tipe_kepribadian->nama }})</b></p>
        <ul>
            @foreach($deskripsi_tipe_kepribadian as $val)
            <li>{{ $val->deskripsi }}</li>
            @endforeach
        </ul>
        <p style="color:black;"><b>SARAN PENGEMBANGAN :</b></p>
        <ul>
            @foreach($saran_pengembangan_tipe_kepribadian as $val)
            <li>{{ $val->saran_pengembangan }}</li>
            @endforeach
        </ul>
    </div>
    <div class="col-md-12" style="overflow-x:auto;">
        <table id="table-modal" width="100%" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th width="5%">No.</th>
                    <th width="5%">Urutan</th>
                    <th width="20%">Jawaban</th>
                    <th>Dimensi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($jawaban as $val)
                <tr>
                    <td>{{ $no++ }}</td>
                    <td>{{ $val->soal_kepribadian_id }}</td>
                    <td>{{ $val->soal }}</td>
                    <td>{{ $val->nama }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>