Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9896A5943
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 13:43:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A7F83F93B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 12:43:24 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by lists.linaro.org (Postfix) with ESMTPS id 898AE3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 12:43:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Df7zrRz2;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.49 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id m8-20020a17090a4d8800b002377bced051so13599187pjh.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 04:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677588182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GNoSdXiAy4Hnpx4GSmf9v1s/TnoJ2Easnzikmce7RFo=;
        b=Df7zrRz22eg8YZi+bpqjSJPlYpN8eIwr9o77wJ4OIQ+4kuTEVXpnUz/mPubCGdCkzm
         wB0GhDQXs3xOQYDpZ9TG3khGJT4x7Ps3f8Vj0npRhk0C4oSB96tMQoW50c51EZ3lfU6+
         vFMlcXzfaK3nk76iyyHVvUt22CWre9Kuihg8DdAXM83Q0NBTYhnQ9e1mcv7ZaGj3nj6C
         DWIlEvKfO56rW78AV5SO5ICvqhDgv2GTFKuLLPU+zrXAXmgq0Z3G0wNqW6+IdX6MRcKc
         JC/a+Zbq22en8EaGBqwiunzxOiXmQHaNTUI4tKBNSby2zUAc3XWf8SlBzOOJfcD8IlKJ
         SM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677588182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNoSdXiAy4Hnpx4GSmf9v1s/TnoJ2Easnzikmce7RFo=;
        b=wHrpAMy/WR4b1mnrxSyxApEoAhcqYIVo3Th0W4DBRwIZ/zI3C6NyUnvJtijYuffl1P
         587wh1BbXmbNcBELhsUh8OL/h9wizcCCgKXIjTHrOH8ugeFBeK+VCPwVL8qfUcnp4vkN
         48/w315QXhd2boRgCwIj2E+knhYqPSpCh6gyWWF6add0IO2oGIMj5aTILaFXRQ9FmHbI
         Av+ha8wfKxVmu+vQNX4Bv82txEknjyiJ4Lw2MD4xSooSkVxVoZaOwup6S4vvgMrAgdzJ
         uUqigV7du2eJ3jSjS25HGWOeM3oFOG4gxbuP/nmqmQ4spNUKQWZmLBLKA44+dibUbahK
         DiQQ==
X-Gm-Message-State: AO0yUKWeP29fhETOeFKjD7ysyKh6g0X92jDHx27hPlGQzoAdq5KXsh6u
	NOPxtbZRsKpv7gvNNQoqWcU=
X-Google-Smtp-Source: AK7set9OdAQjCkCpgdCiYZHKKMRQTrLw3bEzWK8cbf3O+nNoqA5K32bwW9Ij9MRpVcAkVdH7hRxAQg==
X-Received: by 2002:a05:6a20:47d7:b0:cc:68a1:5033 with SMTP id ey23-20020a056a2047d700b000cc68a15033mr3052844pzb.16.1677588182510;
        Tue, 28 Feb 2023 04:43:02 -0800 (PST)
Received: from debian.me (subs02-180-214-232-83.three.co.id. [180.214.232.83])
        by smtp.gmail.com with ESMTPSA id y18-20020aa78052000000b005a909290425sm6172405pfm.172.2023.02.28.04.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 04:43:01 -0800 (PST)
Received: by debian.me (Postfix, from userid 1000)
	id 24D0210105C; Tue, 28 Feb 2023 19:42:57 +0700 (WIB)
Date: Tue, 28 Feb 2023 19:42:57 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
Message-ID: <Y/320d96QmbLe1J8@debian.me>
References: <20230227193535.2822389-1-robdclark@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230227193535.2822389-1-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 898AE3ED3C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: WIJ6DPOFOVGTR3XSNKZUD5DRDKDLKKVN
X-Message-ID-Hash: WIJ6DPOFOVGTR3XSNKZUD5DRDKDLKKVN
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?utf-8?Q?D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul <sean@poorly.run>, Stephen Boyd 
 <swboyd@chromium.org>, Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WIJ6DPOFOVGTR3XSNKZUD5DRDKDLKKVN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3635378257635942963=="


--===============3635378257635942963==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wAv6Jr7MZqhKVbDV"
Content-Disposition: inline


--wAv6Jr7MZqhKVbDV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 27, 2023 at 11:35:06AM -0800, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
>=20
> This series adds a deadline hint to fences, so realtime deadlines
> such as vblank can be communicated to the fence signaller for power/
> frequency management decisions.
>=20
> This is partially inspired by a trick i915 does, but implemented
> via dma-fence for a couple of reasons:
>=20
> 1) To continue to be able to use the atomic helpers
> 2) To support cases where display and gpu are different drivers
>=20
> This iteration adds a dma-fence ioctl to set a deadline (both to
> support igt-tests, and compositors which delay decisions about which
> client buffer to display), and a sw_sync ioctl to read back the
> deadline.  IGT tests utilizing these can be found at:
>=20
>   https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-d=
eadline
>=20
>=20
> v1: https://patchwork.freedesktop.org/series/93035/
> v2: Move filtering out of later deadlines to fence implementation
>     to avoid increasing the size of dma_fence
> v3: Add support in fence-array and fence-chain; Add some uabi to
>     support igt tests and userspace compositors.
> v4: Rebase, address various comments, and add syncobj deadline
>     support, and sync_file EPOLLPRI based on experience with perf/
>     freq issues with clvk compute workloads on i915 (anv)
> v5: Clarify that this is a hint as opposed to a more hard deadline
>     guarantee, switch to using u64 ns values in UABI (still absolute
>     CLOCK_MONOTONIC values), drop syncobj related cap and driver
>     feature flag in favor of allowing count_handles=3D=3D0 for probing
>     kernel support.
> v6: Re-work vblank helper to calculate time of _start_ of vblank,
>     and work correctly if the last vblank event was more than a
>     frame ago.  Add (mostly unrelated) drm/msm patch which also
>     uses the vblank helper.  Use dma_fence_chain_contained().  More
>     verbose syncobj UABI comments.  Drop DMA_FENCE_FLAG_HAS_DEADLINE_BIT.
> v7: Fix kbuild complaints about vblank helper.  Add more docs.
>=20

I want to apply this series for testing, but it can't be applied cleanly
on current drm-misc tree. On what tree (and commit) is this series based
on?

--=20
An old man doll... just what I always wanted! - Clara

--wAv6Jr7MZqhKVbDV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCY/32zQAKCRD2uYlJVVFO
o1TBAQCAHLKqy5NdumoKS+DbOAOm+KfhLK93EKYDC8UmiebsRAEA+JAK75T6QTDt
aHxaJFTZKkVfK7+Eq1MfYn2ZeBgJXgU=
=jpg1
-----END PGP SIGNATURE-----

--wAv6Jr7MZqhKVbDV--

--===============3635378257635942963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3635378257635942963==--
