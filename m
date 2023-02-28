Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC46A5590
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 10:23:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E528D4424A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 09:23:02 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 67B8D44247
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 09:22:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=GUWDqdPG;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id s20so12221187lfb.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 01:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677576162;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=wsQK0hNV4XmU0F6XjhscNf54T4h8GnwUQ061Wlk9Tzk=;
        b=GUWDqdPGpjrjvibZS8Qv1BxmyT4O4yPEJ0NuSN8ZUTq6nkLWr1MMcq37zCYG+Mu1Mn
         Y2FtWyKbcQu4OBnNTgY5mFNG9JQab6+uqIwbzitC6Fp4eFeOAB7uawQc5PV0B6umBPSf
         K/3Cf7zrOoqaRTpWRxg+r4Qu5XXRrrxT+OxCkfvIZ2YPL2BtDJBBJGtJHjk0NlshiDvB
         f9ggJHxIZZUZEB8QZJOgc67arafHI7poxZ4XRxJEGE79Nj5tLy9VaRmJW23mrzgW930A
         pRz9CiKsfCkEu78pwvPxNfupEb5pHoT7lmXaYBl1wpNPBJj7ncgf0ruRLsuApNgDKwLt
         TdrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677576162;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wsQK0hNV4XmU0F6XjhscNf54T4h8GnwUQ061Wlk9Tzk=;
        b=jOZ6YzqDc43uNWon82UL9WnBZW+mbMc+DWD6FSlnbqULx1WMNtnWWEXS/yNN+zgtSw
         4TxkizKrp/+tF/RcfQpGN4iOv554stjQWwst6aDrresKhPlg6P8CjVrdlZTa6LfjJs19
         o8VnHEBTKmtTbq9jhR9N4ol3887Y7egMB9Ekv9T1FqCaI23NccnxhbQ7i60Hit9Jt3vu
         drT2uHoLCnoPfJPuibl4fwc5nHymPjqupK3sMwogovzczUCx/k0m7VtBQGUdC2HiJIyr
         AQ6sNES5/D40j+nnFFWYoHBd78+SVUd8OQSpwOUE4GyBiht0CjkwLQtc1PqrdU6LHesF
         oqJA==
X-Gm-Message-State: AO0yUKXHxgAAkd3zoG6wGAY3FHPJu+yEwNtruAkE4BGoIYkxF2KyXE3V
	g9qmOrPnokCp+4eU/3dluK0=
X-Google-Smtp-Source: AK7set9XRi6D4mXG0XyHlnfXEgQSLKmwmc5W+YD31WYJ95pcPak+8Jvf19/aj6JG0bKTDHKIlBQyxA==
X-Received: by 2002:ac2:5197:0:b0:4db:38a2:e989 with SMTP id u23-20020ac25197000000b004db38a2e989mr509397lfi.63.1677576162165;
        Tue, 28 Feb 2023 01:22:42 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id k11-20020a2ea26b000000b00293cc5f83b4sm1113668ljm.27.2023.02.28.01.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 01:22:41 -0800 (PST)
Date: Tue, 28 Feb 2023 11:22:38 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230228112238.40e2ad43@eldfell>
In-Reply-To: <20230227193535.2822389-7-robdclark@gmail.com>
References: <20230227193535.2822389-1-robdclark@gmail.com>
	<20230227193535.2822389-7-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 67B8D44247
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 4WMMGSCEKMTN5ZD3LFFJFWFISWBVBYN6
X-Message-ID-Hash: 4WMMGSCEKMTN5ZD3LFFJFWFISWBVBYN6
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 06/15] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WMMGSCEKMTN5ZD3LFFJFWFISWBVBYN6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1061258265340164573=="

--===============1061258265340164573==
Content-Type: multipart/signed; boundary="Sig_/4g4mIUnoEruvrvGrMqxjkCL";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/4g4mIUnoEruvrvGrMqxjkCL
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 27 Feb 2023 11:35:12 -0800
Rob Clark <robdclark@gmail.com> wrote:

> From: Rob Clark <robdclark@chromium.org>
>=20
> Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> wait (as opposed to a "housekeeping" wait to know when to cleanup after
> some work has completed).  Usermode components of GPU driver stacks
> often poll() on fence fd's to know when it is safe to do things like
> free or reuse a buffer, but they can also poll() on a fence fd when
> waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> lets the kernel differentiate these two cases.
>=20
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/sync_file.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 418021cfb87c..cbe96295373b 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file, po=
ll_table *wait)
>  {
>  	struct sync_file *sync_file =3D file->private_data;
> =20
> +	/*
> +	 * The POLLPRI/EPOLLPRI flag can be used to signal that
> +	 * userspace wants the fence to signal ASAP, express this
> +	 * as an immediate deadline.
> +	 */
> +	if (poll_requested_events(wait) & EPOLLPRI)
> +		dma_fence_set_deadline(sync_file->fence, ktime_get());

Hi,

I don't think this doc will appear anywhere where it could be found,
maybe not in kernel HTML doc at all?

I also think this is not a good idea, but not my call.


Thanks,
pq


> +
>  	poll_wait(file, &sync_file->wq, wait);
> =20
>  	if (list_empty(&sync_file->cb.node) &&


--Sig_/4g4mIUnoEruvrvGrMqxjkCL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP9x94ACgkQI1/ltBGq
qqcKcRAAg5Pur+aKyhVVpZKHRYWfXoeqKBZEkhvsWa15fq6LTXk22BghXfokd1N2
c381QCbhigGI0bovn9MPDu2/nJrLNpqKLGwyd+vFxDTqByHorplcZZGgb26Mg0wM
hkkXktzemleNfjt+uVeG9T8dtXqdbgBH6v4GlCLEZj3weXkNslNe+DPkJ1850L6Q
eAysExnpk48OlBvF1Cbj28sd9ejXQdRU7+gTZutDk959gHAb1JMGyEHfP0Km9iBD
0gJo+lwDVjIYUlVxoq/gBRQStWtDG2kQ8mNsTLKOKQo8oyc1ocFCzrFVyJW5+bmm
gUxJBOyIvIdphde1zH9Ba7aA2/pi6dUCxHjMBnQP6nU8qu+FXXd1HZYByJpNicvF
s22Yd0sWjEQ+LDpt6XmjaHhB7jphANx49sCdA+K3X1v7e8IBELzRFmiJJYfv17fN
mAeyEn96ldcUxDjrQzWboL2w0KsEK4MkOsZozVG189Z1iKH+uXmUNMsySRDHd+ig
+EQ3gp326zylALGQUzK0nJFOlJq2CNYnkK/HixYvLLw1fNp3M7g5WeaBUWLkcfHg
eiSjSPWatT7wNmhjLe4tT/FNlFp4Wwe3ZuTbpQE86IK80rbY77k0zoErHcjEP71a
6AtO1z8VQNeBsFviNgmwufeFiq9LExsu2n8WEKNcwrIWq/aE2m4=
=JLUn
-----END PGP SIGNATURE-----

--Sig_/4g4mIUnoEruvrvGrMqxjkCL--

--===============1061258265340164573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1061258265340164573==--
