Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 596074E997E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 16:28:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8635F3EF98
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 14:28:53 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	by lists.linaro.org (Postfix) with ESMTPS id 6FE813EBBA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 14:28:49 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so8695117wme.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 07:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=WjzWlNVKOE6uKeqLypa3nAMUDF+N13vP0KfWFKRJ4GI=;
        b=LS3rXOJDDKiIT/tfMnHijyWDWKwjQ5oNrVsOyLIAWzFLVdxY+hwOODKpKuBtRwNV3R
         xTjsntU/hYeUcaKuwj32/73XvAM0y9roGriVvmXssFLWO3TcuZbatSV1AKuqGoDSSOPg
         xfUDca8Ykmw0v1welLVX1tyAjAHnnj60lrj4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=WjzWlNVKOE6uKeqLypa3nAMUDF+N13vP0KfWFKRJ4GI=;
        b=fcjFgV0695GoM1HPhNspV0PLKq1uoC0kq2PNNbIOHOTq0AvVYTvgUgYrtKbVGv94LJ
         HfShEB0tnW7s6OX8bdKxj3h4YRnCs88fmlpbQ2gz0FCK3097VVajsLQpKzrBwb7PF+mf
         C6LAtlosw04ZrSnpBEDUAHRny1R2KHab0fUZa/M2E7Pust4NzwwczOOUJ46Du4A/IPbu
         EC16jBERJCpbun/g+g9XOivERRK/ll2BpVeS3+QuOgVPZdU+jovp07XhNxhoLm89pXOK
         gEEtzlCA8KVsvSK9QbaErSMDb9x2K8FRoJkUluh3mSMfY/eHtPeCBfl5nogpCFZBs2Pu
         gcqw==
X-Gm-Message-State: AOAM5305vVnsAUiAqvRfBSUnwThHaySNdZfeJBnZi48bnsFiy0j50Ozl
	WWq/M8D+Z/9sJDkUZED4JpJRng==
X-Google-Smtp-Source: ABdhPJyPodc097J11BwB9GCzd5t3BCFaMS5fyOq2wAqTzghwA5Fhs+Yzi48HpkmELIHQ4mBhJOTAyw==
X-Received: by 2002:a1c:4303:0:b0:38d:43a:82a4 with SMTP id q3-20020a1c4303000000b0038d043a82a4mr9495849wma.37.1648477728396;
        Mon, 28 Mar 2022 07:28:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id y15-20020a05600015cf00b00203e324347bsm14508745wry.102.2022.03.28.07.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 07:28:47 -0700 (PDT)
Date: Mon, 28 Mar 2022 16:28:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YkHGHtMOqVYClkhR@phenom.ffwll.local>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj3e0QjbnPoG7n4I@intel.com>
 <35cc3bd5-c0ab-0bd1-9603-4971234fbcd6@amd.com>
 <338d0623-1161-c958-101f-dc7d8ef12f99@gmail.com>
 <YkHEutP7ylbVgJjf@phenom.ffwll.local>
 <33e990e7-b6fc-d9f8-5dee-4a809ec80d6c@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33e990e7-b6fc-d9f8-5dee-4a809ec80d6c@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: Y3FI2XVJ6BKFDPSDECP6G42ZXLBPVFSP
X-Message-ID-Hash: Y3FI2XVJ6BKFDPSDECP6G42ZXLBPVFSP
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3FI2XVJ6BKFDPSDECP6G42ZXLBPVFSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 28, 2022 at 04:26:44PM +0200, Christian K=F6nig wrote:
> Am 28.03.22 um 16:22 schrieb Daniel Vetter:
> > On Mon, Mar 28, 2022 at 12:28:31PM +0200, Christian K=F6nig wrote:
> > > Hi Ville & Daniel,
> > >=20
> > > Am 25.03.22 um 16:28 schrieb Christian K=F6nig:
> > > > Am 25.03.22 um 16:25 schrieb Ville Syrj=E4l=E4:
> > > > > On Fri, Mar 11, 2022 at 12:02:43PM +0100, Christian K=F6nig wrote:
> > > > > > Add a general purpose helper to deep dive into
> > > > > > dma_fence_chain/dma_fence_array
> > > > > > structures and iterate over all the fences in them.
> > > > > >=20
> > > > > > This is useful when we need to flatten out all fences in those
> > > > > > structures.
> > > > > >=20
> > > > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > > > One of the dma-buf patches took down Intel CI. Looks like every
> > > > > machine oopses in some sync_file thing now:
> > > > > <1>[=A0 260.470008] BUG: kernel NULL pointer dereference, address:
> > > > > 0000000000000010
> > > > > <1>[=A0 260.470020] #PF: supervisor read access in kernel mode
> > > > > <1>[=A0 260.470025] #PF: error_code(0x0000) - not-present page
> > > > > <6>[=A0 260.470030] PGD 0 P4D 0
> > > > > <4>[=A0 260.470035] Oops: 0000 [#1] PREEMPT SMP NOPTI
> > > > > <4>[=A0 260.470040] CPU: 0 PID: 5306 Comm: core_hotunplug Not tai=
nted
> > > > > 5.17.0-CI-CI_DRM_11405+ #1
> > > > > <4>[=A0 260.470049] Hardware name: Intel Corporation Jasper Lake
> > > > > Client Platform/Jasperlake DDR4 SODIMM RVP, BIOS
> > > > > JSLSFWI1.R00.2385.D02.2010160831 10/16/2020
> > > > > <4>[=A0 260.470058] RIP: 0010:dma_fence_array_first+0x19/0x20
> > > I've looked into this and the root cause seems to be that the new code
> > > doesn't handle dma_fence_arrays with zero elements.
> > >=20
> > > That is rather easy to fix, but a dma_fence_array with zero number of
> > > elements is most likely a bug because under the wrong circumstances i=
t can
> > > create a dma_fence instance which will never signal.
> > >=20
> > > I've send out a patch on Frinday ([PATCH] dma-buf: WIP dma_fence_arra=
y_first
> > > fix) which avoids the crash and prints a warning if anybody tries to =
create
> > > a dma_fence_array with zero length.
> > >=20
> > > Can you test this?
> > It's in drm-tip now (in the fixup branch) so drm-tip results should have
> > the result soonish:
> >=20
> > https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fint=
el-gfx-ci.01.org%2Ftree%2Fdrm-tip%2Findex.html&amp;data=3D04%7C01%7Cchristi=
an.koenig%40amd.com%7C0afc74b5df0c4ea384af08da10c672fa%7C3dd8961fe4884e608e=
11a82d994e183d%7C0%7C0%7C637840742273792356%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdat=
a=3DSL2CuMgM6lCSOhDTvs%2FaFg6zRlc7F3X%2BNkf6GuGMGXI%3D&amp;reserved=3D0?
>=20
> How do I find something in there? Is there a search function over all the
> test results?

Not really. You can ask on #intel-gfx-ci, or look at the tests that have
blown up without this to know where to look.

You can also download all the logfiles with wget recursive or so from the
build directory (the links in the top row) and search locally.
-Daniel

>=20
> Thanks,
> Christian.
>=20
> >=20
> > Cheers, Daniel
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
