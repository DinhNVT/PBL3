using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PBL3
{
    public partial class frmGiaoVien : Form
    {
        public frmGiaoVien()
        {
            InitializeComponent();
            pnThongTinGV.Visible = false;
        }

        private void btnThemMoiGV_Click(object sender, EventArgs e)
        {
            btnThem1GV.Text = "Thêm";
            pnThongTinGV.Visible = true;
            pnChucNang.Visible = false;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            pnThongTinGV.Visible = false;
            pnChucNang.Visible = true;
        }

        private void btnSuaGV_Click(object sender, EventArgs e)
        {
            btnThem1GV.Text = "Ok";
            pnThongTinGV.Visible = true;
            pnChucNang.Visible = false;
        }
    }
}
