Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F0AA8828F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 15:39:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4072145531
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:39:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	by lists.linaro.org (Postfix) with ESMTPS id C1495454D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 13:39:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=mUlYL88R;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.13 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1744637951; x=1776173951;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=BnjCiRheLd50KZFZ6NJW6u2NJG2oMLt7fJoUT9IgrY4=;
  b=mUlYL88Rt9t71wYxLqFkwNkGh4OwdY+VkWf8Sgus8PPH0Lgx1Y7r3VBz
   pVgEZNCNv0kvSqFoM0sq6Mv09LELZirOE81LFdoN8VQ627xMNtzvIg+Xb
   JiWGi7E8wvfZ/TQC7xBtZYhSwEgfFpmihGJm7lPA2teggeYu6U2s2TZu1
   equPLBVbmgGPn5kdwhhbNKCHkthYbQdHBo0sWPAxSVKNPXr8tqaEBNoJK
   Em6DIKkkEYwpzO4z9bJhAGaGNa/JUl0KSdEIcMVygO+USYUslDvq6BcFq
   qUxR1ZJMpdHYNhqZiCMObXrhesCeODlGSPFXEY8IvQnvh/zJrc7jfGCCy
   w==;
X-CSE-ConnectionGUID: ZwqsIgckQZSFvmP6+sPWpg==
X-CSE-MsgGUID: qeXMKOiES+uJFGgTKrIcig==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="57097825"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600";
   d="scan'208";a="57097825"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2025 06:39:10 -0700
X-CSE-ConnectionGUID: xDzeAt+nTdGpMdjqU1KNyQ==
X-CSE-MsgGUID: 5ddJHiVxSV6ucBpJq22FuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600";
   d="scan'208";a="160778914"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 14 Apr 2025 06:39:05 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1u4K1e-000EGs-2b;
	Mon, 14 Apr 2025 13:39:02 +0000
Date: Mon, 14 Apr 2025 21:38:20 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>,
	"To : Boris Brezillon" <boris.brezillon@collabora.com>,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202504142148.NBAyzLuE-lkp@intel.com>
References: <20250411150357.3308921-4-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250411150357.3308921-4-adrian.larumbe@collabora.com>
X-Rspamd-Queue-Id: C1495454D5
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.175.65.13:from];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[198.175.65.13:from];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QN2IREOXE4CXIF4OKQVHYX5LPFOFB4ZG
X-Message-ID-Hash: QN2IREOXE4CXIF4OKQVHYX5LPFOFB4ZG
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/4] drm/panthor: Label all kernel BO's
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QN2IREOXE4CXIF4OKQVHYX5LPFOFB4ZG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Adri=E1n,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.15-rc2 next-20250414]
[cannot apply to drm-misc/drm-misc-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Adri-n-Larumbe/drm-p=
anthor-Introduce-BO-labeling/20250414-101541
base:   linus/master
patch link:    https://lore.kernel.org/r/20250411150357.3308921-4-adrian.la=
rumbe%40collabora.com
patch subject: [PATCH v7 3/4] drm/panthor: Label all kernel BO's
config: i386-buildonly-randconfig-006-20250414 (https://download.01.org/0da=
y-ci/archive/20250414/202504142148.NBAyzLuE-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20250414/202504142148.NBAyzLuE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504142148.NBAyzLuE-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/panthor/panthor_gem.c:86: warning: Function parameter or=
 struct member 'name' not described in 'panthor_kernel_bo_create'


vim +86 drivers/gpu/drm/panthor/panthor_gem.c

8a1cc07578bf42 Boris Brezillon 2024-02-29   67 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29   68  /**
8a1cc07578bf42 Boris Brezillon 2024-02-29   69   * panthor_kernel_bo_create=
() - Create and map a GEM object to a VM
8a1cc07578bf42 Boris Brezillon 2024-02-29   70   * @ptdev: Device.
8a1cc07578bf42 Boris Brezillon 2024-02-29   71   * @vm: VM to map the GEM t=
o. If NULL, the kernel object is not GPU mapped.
8a1cc07578bf42 Boris Brezillon 2024-02-29   72   * @size: Size of the buffe=
r object.
8a1cc07578bf42 Boris Brezillon 2024-02-29   73   * @bo_flags: Combination o=
f drm_panthor_bo_flags flags.
8a1cc07578bf42 Boris Brezillon 2024-02-29   74   * @vm_map_flags: Combinati=
on of drm_panthor_vm_bind_op_flags (only those
8a1cc07578bf42 Boris Brezillon 2024-02-29   75   * that are related to map =
operations).
8a1cc07578bf42 Boris Brezillon 2024-02-29   76   * @gpu_va: GPU address ass=
igned when mapping to the VM.
8a1cc07578bf42 Boris Brezillon 2024-02-29   77   * If gpu_va =3D=3D PANTHOR=
_VM_KERNEL_AUTO_VA, the virtual address will be
8a1cc07578bf42 Boris Brezillon 2024-02-29   78   * automatically allocated.
8a1cc07578bf42 Boris Brezillon 2024-02-29   79   *
8a1cc07578bf42 Boris Brezillon 2024-02-29   80   * Return: A valid pointer =
in case of success, an ERR_PTR() otherwise.
8a1cc07578bf42 Boris Brezillon 2024-02-29   81   */
8a1cc07578bf42 Boris Brezillon 2024-02-29   82  struct panthor_kernel_bo *
8a1cc07578bf42 Boris Brezillon 2024-02-29   83  panthor_kernel_bo_create(st=
ruct panthor_device *ptdev, struct panthor_vm *vm,
8a1cc07578bf42 Boris Brezillon 2024-02-29   84  			 size_t size, u32 bo_fla=
gs, u32 vm_map_flags,
f48f05d54f7696 Adri=E1n Larumbe  2025-04-11   85  			 u64 gpu_va, const cha=
r *name)
8a1cc07578bf42 Boris Brezillon 2024-02-29  @86  {
8a1cc07578bf42 Boris Brezillon 2024-02-29   87  	struct drm_gem_shmem_objec=
t *obj;
8a1cc07578bf42 Boris Brezillon 2024-02-29   88  	struct panthor_kernel_bo *=
kbo;
8a1cc07578bf42 Boris Brezillon 2024-02-29   89  	struct panthor_gem_object =
*bo;
8a1cc07578bf42 Boris Brezillon 2024-02-29   90  	int ret;
8a1cc07578bf42 Boris Brezillon 2024-02-29   91 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29   92  	if (drm_WARN_ON(&ptdev->ba=
se, !vm))
8a1cc07578bf42 Boris Brezillon 2024-02-29   93  		return ERR_PTR(-EINVAL);
8a1cc07578bf42 Boris Brezillon 2024-02-29   94 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29   95  	kbo =3D kzalloc(sizeof(*kb=
o), GFP_KERNEL);
8a1cc07578bf42 Boris Brezillon 2024-02-29   96  	if (!kbo)
8a1cc07578bf42 Boris Brezillon 2024-02-29   97  		return ERR_PTR(-ENOMEM);
8a1cc07578bf42 Boris Brezillon 2024-02-29   98 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29   99  	obj =3D drm_gem_shmem_crea=
te(&ptdev->base, size);
8a1cc07578bf42 Boris Brezillon 2024-02-29  100  	if (IS_ERR(obj)) {
8a1cc07578bf42 Boris Brezillon 2024-02-29  101  		ret =3D PTR_ERR(obj);
8a1cc07578bf42 Boris Brezillon 2024-02-29  102  		goto err_free_bo;
8a1cc07578bf42 Boris Brezillon 2024-02-29  103  	}
8a1cc07578bf42 Boris Brezillon 2024-02-29  104 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29  105  	bo =3D to_panthor_bo(&obj-=
>base);
8a1cc07578bf42 Boris Brezillon 2024-02-29  106  	kbo->obj =3D &obj->base;
8a1cc07578bf42 Boris Brezillon 2024-02-29  107  	bo->flags =3D bo_flags;
8a1cc07578bf42 Boris Brezillon 2024-02-29  108 =20
f48f05d54f7696 Adri=E1n Larumbe  2025-04-11  109  	panthor_gem_kernel_bo_se=
t_label(kbo, name);
f48f05d54f7696 Adri=E1n Larumbe  2025-04-11  110 =20
5d01b56f0518d8 Boris Brezillon 2024-10-30  111  	/* The system and GPU MMU =
page size might differ, which becomes a
5d01b56f0518d8 Boris Brezillon 2024-10-30  112  	 * problem for FW sections=
 that need to be mapped at explicit address
5d01b56f0518d8 Boris Brezillon 2024-10-30  113  	 * since our PAGE_SIZE ali=
gnment might cover a VA range that's
5d01b56f0518d8 Boris Brezillon 2024-10-30  114  	 * expected to be used for=
 another section.
5d01b56f0518d8 Boris Brezillon 2024-10-30  115  	 * Make sure we never map =
more than we need.
5d01b56f0518d8 Boris Brezillon 2024-10-30  116  	 */
5d01b56f0518d8 Boris Brezillon 2024-10-30  117  	size =3D ALIGN(size, panth=
or_vm_page_size(vm));
8a1cc07578bf42 Boris Brezillon 2024-02-29  118  	ret =3D panthor_vm_alloc_v=
a(vm, gpu_va, size, &kbo->va_node);
8a1cc07578bf42 Boris Brezillon 2024-02-29  119  	if (ret)
8a1cc07578bf42 Boris Brezillon 2024-02-29  120  		goto err_put_obj;
8a1cc07578bf42 Boris Brezillon 2024-02-29  121 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29  122  	ret =3D panthor_vm_map_bo_=
range(vm, bo, 0, size, kbo->va_node.start, vm_map_flags);
8a1cc07578bf42 Boris Brezillon 2024-02-29  123  	if (ret)
8a1cc07578bf42 Boris Brezillon 2024-02-29  124  		goto err_free_va;
8a1cc07578bf42 Boris Brezillon 2024-02-29  125 =20
ff60c8da0aaf7e Boris Brezillon 2024-05-02  126  	kbo->vm =3D panthor_vm_get=
(vm);
8a1cc07578bf42 Boris Brezillon 2024-02-29  127  	bo->exclusive_vm_root_gem =
=3D panthor_vm_root_gem(vm);
8a1cc07578bf42 Boris Brezillon 2024-02-29  128  	drm_gem_object_get(bo->exc=
lusive_vm_root_gem);
8a1cc07578bf42 Boris Brezillon 2024-02-29  129  	bo->base.base.resv =3D bo-=
>exclusive_vm_root_gem->resv;
8a1cc07578bf42 Boris Brezillon 2024-02-29  130  	return kbo;
8a1cc07578bf42 Boris Brezillon 2024-02-29  131 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29  132  err_free_va:
8a1cc07578bf42 Boris Brezillon 2024-02-29  133  	panthor_vm_free_va(vm, &kb=
o->va_node);
8a1cc07578bf42 Boris Brezillon 2024-02-29  134 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29  135  err_put_obj:
8a1cc07578bf42 Boris Brezillon 2024-02-29  136  	drm_gem_object_put(&obj->b=
ase);
8a1cc07578bf42 Boris Brezillon 2024-02-29  137 =20
8a1cc07578bf42 Boris Brezillon 2024-02-29  138  err_free_bo:
8a1cc07578bf42 Boris Brezillon 2024-02-29  139  	kfree(kbo);
8a1cc07578bf42 Boris Brezillon 2024-02-29  140  	return ERR_PTR(ret);
8a1cc07578bf42 Boris Brezillon 2024-02-29  141  }
8a1cc07578bf42 Boris Brezillon 2024-02-29  142 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
