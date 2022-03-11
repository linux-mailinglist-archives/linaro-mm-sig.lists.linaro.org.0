Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E574D68C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Mar 2022 19:52:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BAC13EEE3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Mar 2022 18:52:52 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id 69DBF3ED8B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Mar 2022 18:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647024769; x=1678560769;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=HPBPOXoL/N182wEXUNP+tY5sANWLFLzGilUZ02/k/WI=;
  b=ZV5zFnndHWplKYRC8lEoU/ow2bFQppXD+uiMN8fO49y6I479tj5TpcWs
   lqLaSd/SkOqMqMvLE49HX9Do+5vVikmEdeTPM5cexcx0PgsTgNztmBVxt
   gN08j1QoGqQ/xjpzHDbhDEqnl7amZI3YUxJ1N7fSSidWDSTpj6/4a70ln
   Drq65adM5q8WhT5Tx/0IPmFyYvr4NN0Ytl6pXNGxTnlEbQ2qOBW1zfUB+
   kZsFBuBRHchqs0d5Nas+fOsaYACsXOkM8enE8OK2hJqOoPtX6znq4dQiN
   /xk66o/Ixz+m7g7laKJNdHfBEiqLhiXcWZw8DA6ollgCLagMjqqzsVRXs
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="318855206"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="318855206"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 10:52:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="645019154"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 11 Mar 2022 10:52:45 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1nSkNZ-0006xC-1h; Fri, 11 Mar 2022 18:52:45 +0000
Date: Sat, 12 Mar 2022 02:51:51 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	sumit.semwal@linaro.org, gustavo@padovan.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Message-ID: <202203120217.BFa438j9-lkp@intel.com>
References: <20220311110244.1245-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311110244.1245-2-christian.koenig@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: S5Z4R2YGHMUK2QE2RQPN2IDNOJMJ4HZB
X-Message-ID-Hash: S5Z4R2YGHMUK2QE2RQPN2IDNOJMJ4HZB
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kbuild-all@lists.01.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf/sync-file: fix warning about fence containers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S5Z4R2YGHMUK2QE2RQPN2IDNOJMJ4HZB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi "Christian,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.17-rc7 next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/dma-buf-ad=
d-dma_fence_unwrap/20220311-190352
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
79b00034e9dcd2b065c1665c8b42f62b6b80a9be
config: x86_64-randconfig-m001 (https://download.01.org/0day-ci/archive/202=
20312/202203120217.BFa438j9-lkp@intel.com/config)
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
        make W=3D1 O=3Dbuild_dir ARCH=3Dx86_64 SHELL=3D/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/dma-buf/sync_file.c:8:
   include/linux/dma-fence-unwrap.h: In function 'dma_fence_unwrap_array':
>> include/linux/dma-fence-unwrap.h:44:18: error: implicit declaration of f=
unction 'dma_fence_chain_contained'; did you mean 'dma_fence_chain_init'? [=
-Werror=3Dimplicit-function-declaration]
      44 |  cursor->array =3D dma_fence_chain_contained(cursor->chain);
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~
         |                  dma_fence_chain_init
   include/linux/dma-fence-unwrap.h:44:16: warning: assignment to 'struct d=
ma_fence *' from 'int' makes pointer from integer without a cast [-Wint-con=
version]
      44 |  cursor->array =3D dma_fence_chain_contained(cursor->chain);
         |                ^
>> include/linux/dma-fence-unwrap.h:46:9: error: implicit declaration of fu=
nction 'dma_fence_array_first'; did you mean 'dma_fence_array_create'? [-We=
rror=3Dimplicit-function-declaration]
      46 |  return dma_fence_array_first(cursor->array);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         dma_fence_array_create
   include/linux/dma-fence-unwrap.h:46:9: warning: returning 'int' from a f=
unction with return type 'struct dma_fence *' makes pointer from integer wi=
thout a cast [-Wint-conversion]
      46 |  return dma_fence_array_first(cursor->array);
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-fence-unwrap.h: In function 'dma_fence_unwrap_next':
>> include/linux/dma-fence-unwrap.h:77:8: error: implicit declaration of fu=
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
088aa14c0f5cad Christian K=F6nig 2022-03-11  49  /**
088aa14c0f5cad Christian K=F6nig 2022-03-11  50   * dma_fence_unwrap_first =
- return the first fence from fence containers
088aa14c0f5cad Christian K=F6nig 2022-03-11  51   * @head: the entrypoint i=
nto the containers
088aa14c0f5cad Christian K=F6nig 2022-03-11  52   * @cursor: current positi=
on inside the containers
088aa14c0f5cad Christian K=F6nig 2022-03-11  53   *
088aa14c0f5cad Christian K=F6nig 2022-03-11  54   * Unwraps potential dma_f=
ence_chain/dma_fence_array containers and return the
088aa14c0f5cad Christian K=F6nig 2022-03-11  55   * first fence.
088aa14c0f5cad Christian K=F6nig 2022-03-11  56   */
088aa14c0f5cad Christian K=F6nig 2022-03-11  57  static inline struct dma_f=
ence *
088aa14c0f5cad Christian K=F6nig 2022-03-11  58  dma_fence_unwrap_first(str=
uct dma_fence *head, struct dma_fence_unwrap *cursor)
088aa14c0f5cad Christian K=F6nig 2022-03-11  59  {
088aa14c0f5cad Christian K=F6nig 2022-03-11  60  	cursor->chain =3D dma_fen=
ce_get(head);
088aa14c0f5cad Christian K=F6nig 2022-03-11  61  	return dma_fence_unwrap_a=
rray(cursor);
088aa14c0f5cad Christian K=F6nig 2022-03-11  62  }
088aa14c0f5cad Christian K=F6nig 2022-03-11  63 =20
088aa14c0f5cad Christian K=F6nig 2022-03-11  64  /**
088aa14c0f5cad Christian K=F6nig 2022-03-11  65   * dma_fence_unwrap_next -=
 return the next fence from a fence containers
088aa14c0f5cad Christian K=F6nig 2022-03-11  66   * @cursor: current positi=
on inside the containers
088aa14c0f5cad Christian K=F6nig 2022-03-11  67   *
088aa14c0f5cad Christian K=F6nig 2022-03-11  68   * Continue unwrapping the=
 dma_fence_chain/dma_fence_array containers and return
088aa14c0f5cad Christian K=F6nig 2022-03-11  69   * the next fence from the=
m.
088aa14c0f5cad Christian K=F6nig 2022-03-11  70   */
088aa14c0f5cad Christian K=F6nig 2022-03-11  71  static inline struct dma_f=
ence *
088aa14c0f5cad Christian K=F6nig 2022-03-11  72  dma_fence_unwrap_next(stru=
ct dma_fence_unwrap *cursor)
088aa14c0f5cad Christian K=F6nig 2022-03-11  73  {
088aa14c0f5cad Christian K=F6nig 2022-03-11  74  	struct dma_fence *tmp;
088aa14c0f5cad Christian K=F6nig 2022-03-11  75 =20
088aa14c0f5cad Christian K=F6nig 2022-03-11  76  	++cursor->index;
088aa14c0f5cad Christian K=F6nig 2022-03-11 @77  	tmp =3D dma_fence_array_n=
ext(cursor->array, cursor->index);
088aa14c0f5cad Christian K=F6nig 2022-03-11  78  	if (tmp)
088aa14c0f5cad Christian K=F6nig 2022-03-11  79  		return tmp;
088aa14c0f5cad Christian K=F6nig 2022-03-11  80 =20
088aa14c0f5cad Christian K=F6nig 2022-03-11  81  	cursor->chain =3D dma_fen=
ce_chain_walk(cursor->chain);
088aa14c0f5cad Christian K=F6nig 2022-03-11  82  	return dma_fence_unwrap_a=
rray(cursor);
088aa14c0f5cad Christian K=F6nig 2022-03-11  83  }
088aa14c0f5cad Christian K=F6nig 2022-03-11  84 =20

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
