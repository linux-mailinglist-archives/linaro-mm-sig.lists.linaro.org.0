Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 545F169C70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 09:54:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 555C73F324
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 08:54:10 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id 58A183EBC1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:53:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=azGbtfYk;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.51 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id w27so810932lfu.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 00:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=trdU/6mZ4q/7CXRXpWi9nWU7w+Kvl3oqkNpwnPL/xoY=;
        b=azGbtfYk+TZRcFnh0hwpFLW2w98LQp4ZhJllv0TIkOe7zj8GlJl5S+XpZoTAG4TdBJ
         XHrECHIIuZFxlI0jOGbPIRjLjp29kFnrf8q1QYLHIrRQMDdDVw622BQePfbruj1uInec
         YpnUpDYKU4oBjNs/mswVwX4ydicK6ewSZIxO11or5LYowag9KdyQn3qRlNnJh72UrVjU
         QHFAX1l7Th0hMZXApsOL8Hdfs0GDs8SjifG93E69m2OQDS6XoxzvIVxXxAR3S8TN0tKC
         BmSlEoPkgseU5j5e61AUhgV1etJ/Okhme6ZlLLalSY90UuYasgbWtK59V6AwEaJl/twA
         Nm7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=trdU/6mZ4q/7CXRXpWi9nWU7w+Kvl3oqkNpwnPL/xoY=;
        b=f46PyabAb6th4tD18lx4+bpLl+kNDcTSvVLICDvKk807iSyZpTB9vaeNADBUYBHnC5
         +RdzF2Rcoojgtw1cLggv5S2X1zMxLHqogOiod/9p7HEkpN9kIqKvcIbU38AtKDD4HDfZ
         Xormz4tOQB4lKuTaykAYo0EVuznRxvCEsl5Nubv1IFNj3GJTX4P1PvPtKC4prmQUhcPC
         8L2a7E4lEoJD02NTMd13KD3OsvveB8HLa6Qf3+qVp4/0hztmIXnVAN4lnPCs8wTaLwqB
         btaf9XYyhkpsXq76R6d/tH1/+1UL4PaKhYw59FS8jCK2I2gAmDRhMC97tk3LTljhhvMc
         Rx5w==
X-Gm-Message-State: AO0yUKUwOjiXuGOhtCSpDYLK1plXUr1VdXNSqazMo370HKpbv7NfdLuM
	5JWxg0RG67reYQSeih7fxOE=
X-Google-Smtp-Source: AK7set+chHdtsONmBxQKyeY3ayi/UIiPA+HEV1eVQ7sK7gsxB+50rZIjxz2VEjts5QnZPfmkKKBw6w==
X-Received: by 2002:ac2:5307:0:b0:4b6:f30c:c7a9 with SMTP id c7-20020ac25307000000b004b6f30cc7a9mr284863lfh.1.1676883229906;
        Mon, 20 Feb 2023 00:53:49 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id f25-20020ac25339000000b004d865c781eesm251470lfh.24.2023.02.20.00.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 00:53:49 -0800 (PST)
Date: Mon, 20 Feb 2023 10:53:45 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230220105345.70e46fa5@eldfell>
In-Reply-To: <20230218211608.1630586-7-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
	<20230218211608.1630586-7-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 58A183EBC1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.51:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[17];
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
Message-ID-Hash: 7N64HYI7464R65KEBQJAAXCCKESZGTJ2
X-Message-ID-Hash: 7N64HYI7464R65KEBQJAAXCCKESZGTJ2
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7N64HYI7464R65KEBQJAAXCCKESZGTJ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2445417339472312343=="

--===============2445417339472312343==
Content-Type: multipart/signed; boundary="Sig_/wnWeB2/6YYExS1Py=pCZ2ib";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/wnWeB2/6YYExS1Py=pCZ2ib
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sat, 18 Feb 2023 13:15:49 -0800
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

Hi,

where would the UAPI documentation of this go?
It seems to be missing.

If a Wayland compositor is polling application fences to know which
client buffer to use in its rendering, should the compositor poll with
PRI or not? If a compositor polls with PRI, then all fences from all
applications would always be PRI. Would that be harmful somehow or
would it be beneficial?


Thanks,
pq

> ---
>  drivers/dma-buf/sync_file.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index fb6ca1032885..c30b2085ee0a 100644
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
> +
>  	poll_wait(file, &sync_file->wq, wait);
> =20
>  	if (list_empty(&sync_file->cb.node) &&


--Sig_/wnWeB2/6YYExS1Py=pCZ2ib
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmPzNRoACgkQI1/ltBGq
qqe77A//VJjJucK06UFHDO7Zu3DgjaELDyU40vdJCa9iz91ZDSzArZnKxVbTGdBk
yJ+wWbQP/18GcPB49moFu/VY5FZWt8NzAgEGd7phYI7nE9EOoL3yo/8xMMjLAZYS
lDeBsEDYav7xiCr1Y5y4zM3/pp+9RZWN4VIc3eEFNc+DBZojirvB2dNO7g2JC/Gu
gmZWfl6UY83SEUEo9jzf7vBQJ+J7lLcsZ/OoL7l8289AF9CRSKOX/01qNc18nhhT
ZU6P0MoIlJK8CcFMXBvVlo7PkFdayZBELiZUaZb1uBhDCmCcN0jD3rZlYT8knUQ5
051QX7vJ7fHma9vOu729Rbdy+zAg+k/y2H2NZG9HaKknsbObhbv/GLHr8KXvJCP3
oUaxw87cx+tR1+WMhGq7wDUIwj59byxURD4T1ZSrGLvodOEk/BoYEaOKOUeicXfp
XcHhPdOi6mnPr8X34AlZx6PBrcGyHD65NI884dwmkikB1LhMAY9FFOejVje8Gj9a
ImS22N1SI0EvelgP6QNobhyP4AhYz63FQBKOVH3P11AkbvzBov555LsTt0nkxyyF
14jExe1mrErutmQo274Km3nnAjq4yg18/oRqNBM1ntS4KIl0EyqIqOcptPELnyKv
ieAzCXRvgipizQG+wbhAZphPqYtMMpHsSofY8iA0XDSBHQs8O+Y=
=hARr
-----END PGP SIGNATURE-----

--Sig_/wnWeB2/6YYExS1Py=pCZ2ib--

--===============2445417339472312343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2445417339472312343==--
