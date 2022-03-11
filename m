Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC534D65DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Mar 2022 17:17:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACC063EEE6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Mar 2022 16:17:27 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id 74C233ED8B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Mar 2022 16:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647015445; x=1678551445;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=yyPVRfcwQMWAUXo2WqNU02KTdzN0qNIuvJopM4W7I4k=;
  b=nygIQNS4SBfZTea4vd/g12DIlBgz9iOXI/wysLibUqGA/o+J7mbjveCs
   /UTWp7Sd0OHR9TlFMrEHC5DpD80RlQlaenJ+/Tl4vDI7CO/5xQPUNg0ST
   +PbipsP41WwtkuncW+L1NryfNp7bDWYDExl7TaRVn2XJygawCcXITl7jG
   Ta4p5kzqw3ZShGwM86Ts3LtcUOSSUMky94OlAuXbVX72El1knxy+PI6EQ
   Q1b+2QeTws6TxmRqT46nP1PMV8XzOMttoAn02FvI0AA0785jIYz1eDom5
   xVXXQ+kPEYgW7vpF8H2g7eCdTe2+s2vS1YoVnIj9pwAp16tC172MZWWH9
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="235553266"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="235553266"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 08:17:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="597154526"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 11 Mar 2022 08:17:22 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nShxB-0006if-9W; Fri, 11 Mar 2022 16:17:21 +0000
Date: Sat, 12 Mar 2022 00:16:40 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	sumit.semwal@linaro.org, gustavo@padovan.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Message-ID: <202203120047.SyXpIs6H-lkp@intel.com>
References: <20220311110244.1245-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311110244.1245-2-christian.koenig@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: IVW23PJZ3WT5KGMSUXV2BXKGAPWVPOF3
X-Message-ID-Hash: IVW23PJZ3WT5KGMSUXV2BXKGAPWVPOF3
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kbuild-all@lists.01.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf/sync-file: fix warning about fence containers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IVW23PJZ3WT5KGMSUXV2BXKGAPWVPOF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi "Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.17-rc7 next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/dma-buf-ad=
d-dma_fence_unwrap/20220311-190352
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
79b00034e9dcd2b065c1665c8b42f62b6b80a9be
config: x86_64-randconfig-m001 (https://download.01.org/0day-ci/archive/202=
20312/202203120047.SyXpIs6H-lkp@intel.com/config)
compiler: gcc-9 (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0
reproduce (this is a W=3D1 build):
        # https://github.com/0day-ci/linux/commit/ca3584ac05c4a450e69b1c6bc=
b0672b5ab026c7c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Christian-K-nig/dma-buf-add-dma_fe=
nce_unwrap/20220311-190352
        git checkout ca3584ac05c4a450e69b1c6bcb0672b5ab026c7c
        # save the config file to linux build tree
        mkdir build_dir
        make W=3D1 O=3Dbuild_dir ARCH=3Dx86_64 SHELL=3D/bin/bash drivers/dm=
a-buf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/dma-buf/sync_file.c:8:
   include/linux/dma-fence-unwrap.h: In function 'dma_fence_unwrap_array':
   include/linux/dma-fence-unwrap.h:44:18: error: implicit declaration of f=
unction 'dma_fence_chain_contained'; did you mean 'dma_fence_chain_init'? [=
-Werror=3Dimplicit-function-declaration]
      44 |  cursor->array =3D dma_fence_chain_contained(cursor->chain);
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~
         |                  dma_fence_chain_init
>> include/linux/dma-fence-unwrap.h:44:16: warning: assignment to 'struct d=
ma_fence *' from 'int' makes pointer from integer without a cast [-Wint-con=
version]
      44 |  cursor->array =3D dma_fence_chain_contained(cursor->chain);
         |                ^
   include/linux/dma-fence-unwrap.h:46:9: error: implicit declaration of fu=
nction 'dma_fence_array_first'; did you mean 'dma_fence_array_create'? [-We=
rror=3Dimplicit-function-declaration]
      46 |  return dma_fence_array_first(cursor->array);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         dma_fence_array_create
>> include/linux/dma-fence-unwrap.h:46:9: warning: returning 'int' from a f=
unction with return type 'struct dma_fence *' makes pointer from integer wi=
thout a cast [-Wint-conversion]
      46 |  return dma_fence_array_first(cursor->array);
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-fence-unwrap.h: In function 'dma_fence_unwrap_next':
   include/linux/dma-fence-unwrap.h:77:8: error: implicit declaration of fu=
nction 'dma_fence_array_next'; did you mean 'dma_fence_unwrap_next'? [-Werr=
or=3Dimplicit-function-declaration]
      77 |  tmp =3D dma_fence_array_next(cursor->array, cursor->index);
         |        ^~~~~~~~~~~~~~~~~~~~
         |        dma_fence_unwrap_next
   include/linux/dma-fence-unwrap.h:77:6: warning: assignment to 'struct dm=
a_fence *' from 'int' makes pointer from integer without a cast [-Wint-conv=
ersion]
      77 |  tmp =3D dma_fence_array_next(cursor->array, cursor->index);
         |      ^
   cc1: some warnings being treated as errors


vim +44 include/linux/dma-fence-unwrap.h

088aa14c0f5cad Christian K=F6nig 2022-03-11  33 =20
088aa14c0f5cad Christian K=F6nig 2022-03-11  34  /**
088aa14c0f5cad Christian K=F6nig 2022-03-11  35   * dma_fence_unwrap_array =
- helper to unwrap dma_fence_arrays
088aa14c0f5cad Christian K=F6nig 2022-03-11  36   * @cursor: cursor to init=
ialize
088aa14c0f5cad Christian K=F6nig 2022-03-11  37   *
088aa14c0f5cad Christian K=F6nig 2022-03-11  38   * Helper function to unwr=
ap dma_fence_array containers, don't touch directly.
088aa14c0f5cad Christian K=F6nig 2022-03-11  39   * Use dma_fence_unwrap_fi=
rst/next instead.
088aa14c0f5cad Christian K=F6nig 2022-03-11  40   */
088aa14c0f5cad Christian K=F6nig 2022-03-11  41  static inline struct dma_f=
ence *
088aa14c0f5cad Christian K=F6nig 2022-03-11  42  dma_fence_unwrap_array(str=
uct dma_fence_unwrap * cursor)
088aa14c0f5cad Christian K=F6nig 2022-03-11  43  {
088aa14c0f5cad Christian K=F6nig 2022-03-11 @44  	cursor->array =3D dma_fen=
ce_chain_contained(cursor->chain);
088aa14c0f5cad Christian K=F6nig 2022-03-11  45  	cursor->index =3D 0;
088aa14c0f5cad Christian K=F6nig 2022-03-11 @46  	return dma_fence_array_fi=
rst(cursor->array);
088aa14c0f5cad Christian K=F6nig 2022-03-11  47  }
088aa14c0f5cad Christian K=F6nig 2022-03-11  48 =20

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
