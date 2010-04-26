use LibreDwg;

#dwg_read_file

sub test_dwg_c
{
    my $filename=shift;
    my $error;
    my $dwg_struct = LibreDwg::Dwg_Data->new();
    
    $error = LibreDwgc::dwg_read_file($filename, $dwg_struct);
    
    LibreDwgc::dwg_free($dwg_struct);

  if ($error)
    {
      printf("\nERROR!\n\n");
    }
  else
    {
      printf("\nSUCCESS!\n\n");
    }

}

test_dwg_c shift;
