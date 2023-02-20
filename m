Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B3369C6F4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 09:48:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B09093F324
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 08:48:32 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by lists.linaro.org (Postfix) with ESMTPS id 88C403E826
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:48:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=qYM9dVM7;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.176 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id u15so1430612ljo.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 00:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qV5Lw5KifcCJ34n5H2SgCrDAtoK4e/v6u9RV+7WDMKo=;
        b=qYM9dVM71VCa1yx3lx3afU8Si2ccyLfzO62pgum0L+9RUnaiB5gCdCtDaP4QE14xCj
         edjIXNfKeKXAM0IHnCr8ecEdUPP7cye9QWnIKWeWjelyUPBh/Lp47GfweU2lYfA75K7D
         wcW40yAPUzkVhVUFIJgEX+cx1TgGTQGOz+qYmzZpKFA+ytpo85tpqgCzn2LUo2ZHUtky
         UAZ8npHY2U+6GsNNmLlzSKlMHkqSYKJVEuNfA6aKoUP8XlqKDpSzlf1EgZWUty/soWHO
         PB/4LxNHN9cradyec6tcwiylOizcV3bYSws5YC4e6gqpeiWW+gUs9oDDdpZZcbf7RebQ
         V2Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qV5Lw5KifcCJ34n5H2SgCrDAtoK4e/v6u9RV+7WDMKo=;
        b=Z3oem87p7uwY/L3uEXaG3jihPxyy8Z0tH8GIs3cWZpvStPVGLnpX0/bHJcDLYS8iQy
         f7lfoA+1XMMuI/m3X2XDmYM+FaWLwT5tuD8DYHy8+YdhJ60WHBbKiScQF+8r4O56xsOB
         lYo9RAd4yB87Z50MG8f45Ttq0Cg92CNC+wm+ITHapJP6hFrA7NgSEofQ1rAxa3O7zXN6
         nFCCgvxeCzehPbWcFXTyKUTHBiZ+O44CIBZFgAPeR9BJXNpcT/kk+rJZwy725IAmYtbU
         WvVYkzy3/YVIRz6egiY/UA8ZtgRCEa3/yxSjYY/whFK871p/GTGt4Peqz9gQU8YLRQma
         GYQA==
X-Gm-Message-State: AO0yUKX9UNAsOvtczFA82qaVFG80G4xjMkq0eZZOPHndHxN9bVxtp1iR
	PuDXgxWsq0B+xpyg0svOabc=
X-Google-Smtp-Source: AK7set/Rr6EoOBhFwq77IWkl4T4a8Bkeo4PUk+/Tu6+qvGuXDdiDFhO6mnbj9/rnYFGDM468AoUDZw==
X-Received: by 2002:a05:651c:220c:b0:290:8289:8cb8 with SMTP id y12-20020a05651c220c00b0029082898cb8mr580292ljq.6.1676882892028;
        Mon, 20 Feb 2023 00:48:12 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id f9-20020a05651c02c900b002934febffe4sm52988ljo.128.2023.02.20.00.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 00:48:11 -0800 (PST)
Date: Mon, 20 Feb 2023 10:48:08 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230220104808.261acfab@eldfell>
In-Reply-To: <20230218211608.1630586-6-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
	<20230218211608.1630586-6-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 88C403E826
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.176:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
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
Message-ID-Hash: AMQGSHMKAIW76I3RFKPFPNCPHVJVV7CN
X-Message-ID-Hash: AMQGSHMKAIW76I3RFKPFPNCPHVJVV7CN
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 05/14] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMQGSHMKAIW76I3RFKPFPNCPHVJVV7CN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3876151177765871970=="

--===============3876151177765871970==
Content-Type: multipart/signed; boundary="Sig_/Zs=8tBQ+ROU3tBZ1hRIUE2K";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Zs=8tBQ+ROU3tBZ1hRIUE2K
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sat, 18 Feb 2023 13:15:48 -0800
Rob Clark <robdclark@gmail.com> wrote:

> From: Rob Clark <robdclark@chromium.org>
>=20
> The initial purpose is for igt tests, but this would also be useful for
> compositors that wait until close to vblank deadline to make decisions
> about which frame to show.
>=20
> The igt tests can be found at:
>=20
> https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-dea=
dline
>=20
> v2: Clarify the timebase, add link to igt tests
>=20
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
>  include/uapi/linux/sync_file.h | 22 ++++++++++++++++++++++
>  2 files changed, 41 insertions(+)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index af57799c86ce..fb6ca1032885 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -350,6 +350,22 @@ static long sync_file_ioctl_fence_info(struct sync_f=
ile *sync_file,
>  	return ret;
>  }
> =20
> +static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
> +					unsigned long arg)
> +{
> +	struct sync_set_deadline ts;
> +
> +	if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
> +		return -EFAULT;
> +
> +	if (ts.pad)
> +		return -EINVAL;
> +
> +	dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nse=
c));
> +
> +	return 0;
> +}
> +
>  static long sync_file_ioctl(struct file *file, unsigned int cmd,
>  			    unsigned long arg)
>  {
> @@ -362,6 +378,9 @@ static long sync_file_ioctl(struct file *file, unsign=
ed int cmd,
>  	case SYNC_IOC_FILE_INFO:
>  		return sync_file_ioctl_fence_info(sync_file, arg);
> =20
> +	case SYNC_IOC_SET_DEADLINE:
> +		return sync_file_ioctl_set_deadline(sync_file, arg);
> +
>  	default:
>  		return -ENOTTY;
>  	}
> diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_fil=
e.h
> index ee2dcfb3d660..c8666580816f 100644
> --- a/include/uapi/linux/sync_file.h
> +++ b/include/uapi/linux/sync_file.h
> @@ -67,6 +67,20 @@ struct sync_file_info {
>  	__u64	sync_fence_info;
>  };
> =20
> +/**
> + * struct sync_set_deadline - set a deadline on a fence
> + * @tv_sec:	seconds elapsed since epoch
> + * @tv_nsec:	nanoseconds elapsed since the time given by the tv_sec

Hi,

should tv_sec,tv_nsec be validated like clock_settime() does?

It requires:
- tv_sec >=3D 0
- tv_nsec >=3D 0
- tv_nsec < 1e9


Thanks,
pq


> + * @pad:	must be zero
> + *
> + * The timebase for the deadline is CLOCK_MONOTONIC (same as vblank)
> + */
> +struct sync_set_deadline {
> +	__s64	tv_sec;
> +	__s32	tv_nsec;
> +	__u32	pad;
> +};
> +
>  #define SYNC_IOC_MAGIC		'>'
> =20
>  /**
> @@ -95,4 +109,12 @@ struct sync_file_info {
>   */
>  #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_inf=
o)
> =20
> +
> +/**
> + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> + *
> + * Allows userspace to set a deadline on a fence, see dma_fence_set_dead=
line()
> + */
> +#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_de=
adline)
> +
>  #endif /* _UAPI_LINUX_SYNC_H */


--Sig_/Zs=8tBQ+ROU3tBZ1hRIUE2K
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmPzM8gACgkQI1/ltBGq
qqcGThAArTvNmspP+NBuhmIe367Uz7E068vGrflxRgHISKGzeiiy8eKI5kxMx/Hq
kN6DmwMs3DzmAKDHMATNegJ05rhS+casRjndjFHKGk7Qb7rb4AllCjStZPDJznjo
yWpGpdIl/TIDX17yM5xNM4a6ynbi0S4WDZPbBUfDQdThx9O4j1nNdKjmNBvIwOvn
V8BrYmQfRtZ80h5+3GDSK87md36T/XzEiLUnu28NG1nPF8wGOV2Oyxjc3gGJC2Tv
kdHuPNyW20umjKYQr00R0J6gzHJe87dF9B7LkKz/gBm4ibvWgENlfVQLkuqWVr0p
lGOVgdJDBd1JnoHxf+hpTavWS15dUQvzyaqrfZR8K8HGC9884NJu/dUB266iVICp
vODamw0fad8APnrRxMZbsWi/orU7PvdS0vGuCmvZAS1cefFDdEIvtYrC9W8szfUb
1Lt5k3W+3znKnMS9cGoyLkyKfY8JXNOMCZPEpthQZxLlhlQRyDxIXhvrjgu6vcQy
8UZaQnL5s7BCgpyldB8hdAP1B9FYeMyjKUeD50nys678mkQbrxGb1wjVlozv2mIm
VnKAV+2ggahmoT5S1XUf1029gda56XmBgyD/v1MTCH5wjd/YQkNiV50kqoHwrLKl
8AKyVmMK0CHBFsYh0Ld46y+tw1lM45+QxOL2OlXHF6jSZS7iTSs=
=oowF
-----END PGP SIGNATURE-----

--Sig_/Zs=8tBQ+ROU3tBZ1hRIUE2K--

--===============3876151177765871970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3876151177765871970==--
