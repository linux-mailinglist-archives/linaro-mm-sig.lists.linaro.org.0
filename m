Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B2F6A558B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 10:22:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A02C44424B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 09:22:43 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id DA8BA4424A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 09:22:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=NA3f1vaJ;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.178 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id b13so9457438ljf.6
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 01:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677576138;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=V6NbI+S4Zo6tzBY+15eN9nvIGSIt3qlXNaRweBUwFYg=;
        b=NA3f1vaJs3eN3vz/Uq5w8g6+ipzCq5YakfLVtsPP0KqRM83e3iSoQGIEOhHPNlWQKH
         SHyOs2QQmQjELishwO301NpjbORSQX+wXSqOJSga+NMFKVqky9NQNo53b0srWxEmPIIo
         drXzowOhyMSnokoeaUo9Z2QItGefdYorSJVlOtkg2QdWXdDQ5vzg/FxrrtAKDteqXGUm
         E+qWV+/QftK5PqG5h8K9th799X56gh3BnMJXJLb3AoL802ZTk3D6GETnxHAw2Eu6YQ+h
         lPgpVpCbXGG/G7+vdMIXsWKupvLzX5rFUDuzhq7FrSJnVbhzkonlsy7iD3uN1Hfi+4Jm
         BB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677576138;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V6NbI+S4Zo6tzBY+15eN9nvIGSIt3qlXNaRweBUwFYg=;
        b=X1nUyqsE7196vAWA0nucXAQfhYsfCKDlrQ4WfMtTMoFPt7S/WdE8NDe/z5+l90DCTJ
         cEONeIvsm7K5dchGfxXtnxt5dMgzDMExkYYc09i2Fy7pD5gMgIuH5IFkfVUPpR0iCNXJ
         +/VdZTpKOjC/onofPkfdr+nJvRKbz8oaVdhjmY1s/PDXmiwkzQiXp3AanXSKpgqRdkOk
         Wks1/NiiJdmIk/YGB3S5ebZTNUjJpfOeGxcU7+Vo23kA/7qAEAaVcdKQP41GUFTmiO2t
         ZvI2CcdGBmyEcSQoHorODn+2FbXmFRbeDan94rs2ZTdHk/mIetrHyLtAR4G4F5m5BsNF
         MyoQ==
X-Gm-Message-State: AO0yUKWCnqiFuAXoPu3tCM8GD8jS9iawz+CD1jSNLYrG7oCWyc/Kil3d
	1IEYvC8swM2B05x+RTLG9yI=
X-Google-Smtp-Source: AK7set+Kd4cdSNsGv1XTeExPqdFEh3Ndwwe3jttSL7pQS7m8B06XlDDkCqedJLtZ1APlboiu5k2TjQ==
X-Received: by 2002:a2e:bd0d:0:b0:290:8289:8cb9 with SMTP id n13-20020a2ebd0d000000b0029082898cb9mr2906789ljq.7.1677576138585;
        Tue, 28 Feb 2023 01:22:18 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id o7-20020a2e9b47000000b00295b2e08b9dsm861727ljj.116.2023.02.28.01.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 01:22:18 -0800 (PST)
Date: Tue, 28 Feb 2023 11:22:15 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230228112215.6d3f1f3d@eldfell>
In-Reply-To: <20230227193535.2822389-6-robdclark@gmail.com>
References: <20230227193535.2822389-1-robdclark@gmail.com>
	<20230227193535.2822389-6-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DA8BA4424A
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.178:from];
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
Message-ID-Hash: U7OYZRIBHH7EUBCWUPCYP7PVEGJLOZ56
X-Message-ID-Hash: U7OYZRIBHH7EUBCWUPCYP7PVEGJLOZ56
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 05/15] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U7OYZRIBHH7EUBCWUPCYP7PVEGJLOZ56/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1819109108190132496=="

--===============1819109108190132496==
Content-Type: multipart/signed; boundary="Sig_/oWDcsycV5q/CDhV8x6Uejon";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/oWDcsycV5q/CDhV8x6Uejon
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 27 Feb 2023 11:35:11 -0800
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
> v3: Use u64 value in ns to express deadline.
> v4: More doc
>=20
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/dma-fence.c    |  3 ++-
>  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
>  include/uapi/linux/sync_file.h | 22 ++++++++++++++++++++++
>  3 files changed, 43 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index e103e821d993..7761ceeae620 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -933,7 +933,8 @@ EXPORT_SYMBOL(dma_fence_wait_any_timeout);
>   *   the GPU's devfreq to reduce frequency, when in fact the opposite is=
 what is
>   *   needed.
>   *
> - * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fen=
ce_set_deadline.
> + * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fen=
ce_set_deadline
> + * (or indirectly via userspace facing ioctls like &SYNC_IOC_SET_DEADLIN=
E).
>   * The deadline hint provides a way for the waiting driver, or userspace=
, to
>   * convey an appropriate sense of urgency to the signaling driver.

Hi,

when the kernel HTML doc is generated, I assume the above becomes a
link to "DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence", right?

>   *
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index af57799c86ce..418021cfb87c 100644
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
> +	dma_fence_set_deadline(sync_file->fence, ns_to_ktime(ts.deadline_ns));
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
> index ee2dcfb3d660..49325cf6749b 100644
> --- a/include/uapi/linux/sync_file.h
> +++ b/include/uapi/linux/sync_file.h
> @@ -67,6 +67,21 @@ struct sync_file_info {
>  	__u64	sync_fence_info;
>  };
> =20
> +/**
> + * struct sync_set_deadline - set a deadline hint on a fence
> + * @deadline_ns: absolute time of the deadline

Is it legal to pass zero as deadline_ns?

> + * @pad:	must be zero
> + *
> + * The timebase for the deadline is CLOCK_MONOTONIC (same as vblank)

Does something here provide doc links to "DOC: SYNC_IOC_SET_DEADLINE -
set a deadline on a fence" and to the "DOC: deadline hints"?

> + */
> +struct sync_set_deadline {
> +	__u64	deadline_ns;
> +	/* Not strictly needed for alignment but gives some possibility
> +	 * for future extension:
> +	 */
> +	__u64	pad;
> +};
> +
>  #define SYNC_IOC_MAGIC		'>'
> =20
>  /**
> @@ -95,4 +110,11 @@ struct sync_file_info {
>   */
>  #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_inf=
o)
> =20
> +/**
> + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> + *
> + * Allows userspace to set a deadline on a fence, see dma_fence_set_dead=
line()

Does something here provide doc links to struct sync_set_deadline and
to the "DOC: deadline hints"?

> + */
> +#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_de=
adline)
> +
>  #endif /* _UAPI_LINUX_SYNC_H */

With all those links added:
Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>


Thanks,
pq

--Sig_/oWDcsycV5q/CDhV8x6Uejon
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP9x8cACgkQI1/ltBGq
qqc8sQ/8DMqhf/kvcj3c5YZrL8dLCmCqAWPORFyimEdVZrrOVLHSkH108GROuZQw
INjgpRuu3xjgF1ysobkDxh1MyKXA9ofSipChhlgpMKsbIX5xQAJdTFgZrdDP0rll
L3egS0Y9eERlUR1pR/gkzh96SKYSDsjmF4Ecykp+Q4mz1AkvBqRaHEUBaJ3B63me
BiHA1+oCxultWV/scXjfNr+EYHe1p5Bv67Q+l6Er4lCMDAPeU7F8raYra0d5br8s
AtigfJeTjt3dwxUaLWcz8gt4uCGgd98iEzOjLVMdPFyY39wah/1+UkRhAhlNat+f
+syYHxXq6rDxtlEl3JV1VRWAwYoZwtyAeehrkoT2MScVk+aru/Mg3H4x9vTc/o4/
W6XrU7ptZhZVid5jxs+VVLHA0k4XAuF2tpDoWHTvclmWtMyOTYCuUEP8e2urZl9C
U7V1+GjbOH7xc2DqsrYG+E23TXn+3iFfEBXv9KIklN1fCPibBjWe/2VhoHoH6PMN
THp4xUwHa8R/Qqj193krLYUQwtFlnKGNB7PkIzs9NPiHEw4CyMhbtgQycXMFCP0I
5lamapasfvqlZDBAmDKK+2V5r9aOZhODDswyAoPQOy3lsM8bKuGQv2PqG/kBmlHy
7HminviHeL9maC8ONOYuEvixlc1u3PwSDq+Pp+sUxtlyOnmg01Y=
=th3d
-----END PGP SIGNATURE-----

--Sig_/oWDcsycV5q/CDhV8x6Uejon--

--===============1819109108190132496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1819109108190132496==--
