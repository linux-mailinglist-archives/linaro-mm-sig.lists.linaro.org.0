Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6A33D374C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 11:02:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70A5A61813
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 09:02:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F1D186314C; Fri, 23 Jul 2021 09:02:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D04F560AE3;
	Fri, 23 Jul 2021 09:02:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C2B6060AE3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 09:02:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C0FE560B43; Fri, 23 Jul 2021 09:02:05 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by lists.linaro.org (Postfix) with ESMTPS id AE3E36085A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 09:02:03 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id k15so804075edq.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 02:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=H20rashoP0PI/4mcAWWqkgsc6ouNdbHg+NJZNqP1JDM=;
 b=lVm33/5j21ACNJPF/VGWVWV868PDs09n4VxTQvOBtV2a914nW69TcdhZ5QAkSUAYpU
 bgqR6uSdVVWgsSW/mR+NM835LaGlbzXkhz6KuLuevVTdwKB1Zy7LJlCfaNIrjIhywHZF
 IGZ2DRjnhEcZKePaCZRBaDMn2c0KwZuSEDY98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=H20rashoP0PI/4mcAWWqkgsc6ouNdbHg+NJZNqP1JDM=;
 b=INu6hM6mS9vCremYmnDwmJQKa7Av5jyUlpWbqbggAtbPKphJUNar0+EdEudA2ugM9J
 iCfvZhav7IxRgAokwl1sqBdtNcc6FBYTWxiycPVnWmcgSZS0SajXJekaExyg3jPP1QEB
 juoR9pWu6hQNN55/8zeWU5UxjRRs8iYE2MVi9MksXCqe4xJuO4n0rcfQtr2ZCJn5bQon
 zVy6IgZ5Yzen1RcCThdqndDm32CqqpL+rPmdHfxD2aozE6DzZqhZaqwp86WKfXnh8rmj
 /V60SsUbiYUgXyulEF8JcDsfcffNw+BVwtTxTr261O2VlgrTpD3jWfVvRsD3nE2dYY8j
 Y8Ng==
X-Gm-Message-State: AOAM530GpbD4CukTgNMmPIBbJ3RmimULcGyPv1ezermeFYDqGqllDrR7
 iKM5utsv10iCCNYzDsAkeU1Elg==
X-Google-Smtp-Source: ABdhPJyyEFO9yMTykjx6W9MKiufO2hGuxigcLPb1ZDBRgh4QiUsdniUA57nRfgeuJaGqgIAPLTP0Bg==
X-Received: by 2002:aa7:c907:: with SMTP id b7mr4334018edt.148.1627030922700; 
 Fri, 23 Jul 2021 02:02:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b25sm13846456edv.9.2021.07.23.02.02.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 02:02:02 -0700 (PDT)
Date: Fri, 23 Jul 2021 11:02:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Message-ID: <YPqFiPftjTUV4361@phenom.ffwll.local>
Mail-Followup-To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20210723075857.4065-1-michel@daenzer.net>
 <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
 <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Jul 23, 2021 at 10:19:49AM +0200, Michel D=E4nzer wrote:
> On 2021-07-23 10:04 a.m., Christian K=F6nig wrote:
> > Am 23.07.21 um 09:58 schrieb Michel D=E4nzer:
> >> From: Michel D=E4nzer <mdaenzer@redhat.com>
> >>
> >> This makes sure we don't hit the
> >>
> >> =A0=A0=A0=A0BUG_ON(dmabuf->cb_in.active || dmabuf->cb_out.active);
> >>
> >> in dma_buf_release, which could be triggered by user space closing the
> >> dma-buf file description while there are outstanding fence callbacks
> >> from dma_buf_poll.
> > =

> > I was also wondering the same thing while working on this, but then tho=
ught that the poll interface would take care of this.
> =

> I was able to hit the BUG_ON with https://gitlab.gnome.org/GNOME/mutter/-=
/merge_requests/1880 .

igt test would be really lovely. Maybe base something off the
import/export igts from Jason?
-Daniel

> =

> =

> >> Cc: stable@vger.kernel.org
> >> Signed-off-by: Michel D=E4nzer <mdaenzer@redhat.com>
> >> ---
> >> =A0 drivers/dma-buf/dma-buf.c | 18 ++++++++++++------
> >> =A0 1 file changed, 12 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> >> index 6c520c9bd93c..ec25498a971f 100644
> >> --- a/drivers/dma-buf/dma-buf.c
> >> +++ b/drivers/dma-buf/dma-buf.c
> >> @@ -65,12 +65,9 @@ static void dma_buf_release(struct dentry *dentry)
> >> =A0=A0=A0=A0=A0 BUG_ON(dmabuf->vmapping_counter);
> >> =A0 =A0=A0=A0=A0=A0 /*
> >> -=A0=A0=A0=A0 * Any fences that a dma-buf poll can wait on should be s=
ignaled
> >> -=A0=A0=A0=A0 * before releasing dma-buf. This is the responsibility o=
f each
> >> -=A0=A0=A0=A0 * driver that uses the reservation objects.
> >> -=A0=A0=A0=A0 *
> >> -=A0=A0=A0=A0 * If you hit this BUG() it means someone dropped their r=
ef to the
> >> -=A0=A0=A0=A0 * dma-buf while still having pending operation to the bu=
ffer.
> >> +=A0=A0=A0=A0 * If you hit this BUG() it could mean:
> >> +=A0=A0=A0=A0 * * There's a file reference imbalance in dma_buf_poll /=
 dma_buf_poll_cb or somewhere else
> >> +=A0=A0=A0=A0 * * dmabuf->cb_in/out.active are non-0 despite no pendin=
g fence callback
> >> =A0=A0=A0=A0=A0=A0 */
> >> =A0=A0=A0=A0=A0 BUG_ON(dmabuf->cb_in.active || dmabuf->cb_out.active);
> >> =A0 @@ -196,6 +193,7 @@ static loff_t dma_buf_llseek(struct file *file=
, loff_t offset, int whence)
> >> =A0 static void dma_buf_poll_cb(struct dma_fence *fence, struct dma_fe=
nce_cb *cb)
> >> =A0 {
> >> =A0=A0=A0=A0=A0 struct dma_buf_poll_cb_t *dcb =3D (struct dma_buf_poll=
_cb_t *)cb;
> >> +=A0=A0=A0 struct dma_buf *dmabuf =3D container_of(dcb->poll, struct d=
ma_buf, poll);
> >> =A0=A0=A0=A0=A0 unsigned long flags;
> >> =A0 =A0=A0=A0=A0=A0 spin_lock_irqsave(&dcb->poll->lock, flags);
> >> @@ -203,6 +201,8 @@ static void dma_buf_poll_cb(struct dma_fence *fenc=
e, struct dma_fence_cb *cb)
> >> =A0=A0=A0=A0=A0 dcb->active =3D 0;
> >> =A0=A0=A0=A0=A0 spin_unlock_irqrestore(&dcb->poll->lock, flags);
> >> =A0=A0=A0=A0=A0 dma_fence_put(fence);
> >> +=A0=A0=A0 /* Paired with get_file in dma_buf_poll */
> >> +=A0=A0=A0 fput(dmabuf->file);
> > =

> > Is calling fput() in interrupt context ok? IIRC that could potentially =
sleep.
> =

> Looks fine AFAICT: It has
> =

> 		if (likely(!in_interrupt() && !(task->flags & PF_KTHREAD))) {
> =

> and as a fallback for that, it adds the file to a lock-less delayed_fput_=
list which is processed by a workqueue.
> =

> =

> -- =

> Earthling Michel D=E4nzer               |               https://redhat.com
> Libre software enthusiast             |             Mesa and X developer

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
