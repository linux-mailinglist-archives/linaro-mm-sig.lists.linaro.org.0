Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D26533E40
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 15:51:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B7103EE5B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 13:51:35 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 1BAAF3EC7F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 13:51:31 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id x12so5977206wrg.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 06:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=sGIIQaffh8qdkdQN2TXQM0yr8CUtzn4ce76styDebts=;
        b=kbY52ZA4DFb987YS0okGoh3t5eIgdmKEuolgdMxKh7Hkla0pfFOMjVrqzO1N4XkIeA
         /GgnyDTr+mP93p+H3sGbXt9dqPxADYbI0ixUTIikdlnBDJOxTd8ZVmKSdtbpSOM4BBx2
         gZuMHTab7nxWtS+2Rd9Y1FyeMf0lIY+hJas2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=sGIIQaffh8qdkdQN2TXQM0yr8CUtzn4ce76styDebts=;
        b=d/eSqqXkUb3r8OPSHRFGrqLBSrIAjckoW5GqwQWJZk8SZP+QPoP23m8i/i1wM+Y7B0
         W80bzu85qUJRLk36RiLeNKTRxRrzFMhyBvuvwsO9akuScgbU9a/yN9wB4tZNUO5VyOLP
         GL+tqX1gmwvNkR5BM65jBVxEH4JaaRVqFoQy0i8BpbSSld5Xw2qCbmbYAel+r+V7Jjzi
         OESTwwkZAoPqv9gXwSkvXZZ0l6JVTx/2ENf+Aci3LQWQUa3SsiOEpjuXQcu00HoX7ZtU
         Bhb6+mH6DVXfqC10JzmnTDsUnuGVvu7G1JpA6yHeH+UuLpxvRO5Vu+rLQcKxfMCYRbVf
         moqg==
X-Gm-Message-State: AOAM532egL5R37HvB/Jb5LgLeITMPDCkiykjhGueD5DdZ2sSm76JquRY
	lesrBm1fglU2PVUrhZlRlkSsOA==
X-Google-Smtp-Source: ABdhPJyRr1tz+y8O4y7skfjqjEb9iHPo/NOjJwcynFRmI5qq8NQRQGpHAaROpLCZFV846v9TlslNUQ==
X-Received: by 2002:a5d:560f:0:b0:20d:b24:dadb with SMTP id l15-20020a5d560f000000b0020d0b24dadbmr26795298wrv.121.1653486690098;
        Wed, 25 May 2022 06:51:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id bi19-20020a05600c3d9300b003942a244f39sm2047172wmb.18.2022.05.25.06.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 06:51:29 -0700 (PDT)
Date: Wed, 25 May 2022 15:51:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Message-ID: <Yo40X03axFXXN9/d@phenom.ffwll.local>
References: <20220502163722.3957-1-christian.koenig@amd.com>
 <YnJQs1iusrBvpuMs@phenom.ffwll.local>
 <a01c7703-f7f7-f8ce-f80e-632a6fdcbbbe@gmail.com>
 <Ynkg81p6ADyZBa/L@phenom.ffwll.local>
 <a249c0c4-ee6c-bfb0-737b-eb6afae29602@amd.com>
 <Yo4pin1Js4KXs2HL@phenom.ffwll.local>
 <19808e9e-a5a6-c878-a2f7-5b33444f547d@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19808e9e-a5a6-c878-a2f7-5b33444f547d@mailbox.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: XAHY73FWC67I5IXJKZ7LHZT3QY6G7PTJ
X-Message-ID-Hash: XAHY73FWC67I5IXJKZ7LHZT3QY6G7PTJ
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, tvrtko.ursulin@linux.intel.com, sergemetral@google.com, tzimmermann@suse.de, gustavo@padovan.org, Felix.Kuehling@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, jason@jlekstrand.net, alexander.deucher@amd.com, daniels@collabora.com, skhawaja@google.com, sumit.semwal@linaro.org, maad.aldabagh@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Tackling the indefinite/user DMA fence problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAHY73FWC67I5IXJKZ7LHZT3QY6G7PTJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 25, 2022 at 03:28:41PM +0200, Michel D=E4nzer wrote:
> On 2022-05-25 15:05, Daniel Vetter wrote:
> > On Tue, May 17, 2022 at 12:28:17PM +0200, Christian K=F6nig wrote:
> >> Am 09.05.22 um 16:10 schrieb Daniel Vetter:
> >>> On Mon, May 09, 2022 at 08:56:41AM +0200, Christian K=F6nig wrote:
> >>>> Am 04.05.22 um 12:08 schrieb Daniel Vetter:
> >>>>>
> >>>>> If the goal is specifically atomic kms, then there's an entire can =
of
> >>>>> worms there that I really don't want to think about, but it exists:=
 We
> >>>>> have dma_fence as out-fences from atomic commit, and that's already
> >>>>> massively broken since most drivers allocate some memory or at leas=
t take
> >>>>> locks which can allocate memory in their commit path. Like i2c. Put=
ting a
> >>>>> userspace memory fence as in-fence in there makes that problem
> >>>>> substantially worse, since at least in theory you're just not allow=
ed to
> >>>>> might_faul in atomic_commit_tail.
> >>>> Yes, that's unfortunately one of the goals as well and yes I complet=
ely
> >>>> agree on the can of worms. But I think I've solved that.
> >>>>
> >>>> What I do in the patch set is to enforce that the out fence is an us=
er fence
> >>>> when the driver supports user in fences as well.
> >>>>
> >>>> Since user fences doesn't have the memory management dependency driv=
ers can
> >>>> actually allocate memory or call I2C functions which takes locks whi=
ch have
> >>>> memory allocation dependencies.
> >>>>
> >>>> Or do I miss some other reason why you can't fault or allocate memor=
y in
> >>>> atomic_commit_tail? At least lockdep seems to be happy about that no=
w.
> >>> The problem is a bit that this breaks the uapi already. At least if t=
he
> >>> goal is to have this all be perfectly transparent for userspace - as =
you
> >>> as you have multi-gpu setups going on at least.
> >>
> >> Question here is why do you think there is an UAPI break? We currently=
 wait
> >> in a work item already, so where exactly is the problem?
> >=20
> > It's a bit washy, but dma_fence and hence implicit sync is supposed to
> > finish in finite time. umf just doesn't.
> >=20
> > Ofc in reality you can still flood your compositor and they're not very
> > robust, but with umf it's trivial to just hang your compositor forever =
and
> > nothing happens.
>=20
> You can add that to the list of reasons why compositors need to stop
> using buffers with unsignaled fences. There's plenty of other reasons
> there already (the big one being that otherwise slow clients can slow
> down the compositor, even if the compositor uses a high priority context
> and the HW supports preemption).

Yeah that's tbh another reason why I think we shouldn't do umf as a
transparent thing - compositors need to get better anyway, so we might as
well take this as a chance to do this right.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
