Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 231346B213A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 11:21:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 040AA3F455
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 10:21:43 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 481283EC4E
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 10:21:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=TRXqe8TQ;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id r27so1595159lfe.10
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Mar 2023 02:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678357283;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=KprGKYQ8KgwaGWUbn17Xz5NYf5KpExwL2NMCF7dMdgM=;
        b=TRXqe8TQv4yfm7qG2xhZaoah92igaQMjG0ELmUtzdt7kOaZwrOkfWMsKMhXAsa9hWr
         IL0zq8+qpdODRl4JxxUzTaLAhEWPwUZZ6Mhbqbt02z9+OjT3pKdWZgpfIPX1EucbWd7J
         ZqmAIYlYVO7LhfBF3UcgAdoMoWTDMA31Wi2xJlHuATDyncXQ8Pfi9djMDqLohAWgD75d
         mZFUk/mP5ZFsiSO08rhOZx5yv5XPUBSj0kg1POAZkFpeR90Su3vccPXA4pGFNY7nWAvL
         VzrWe4tUvpwQXG9XL5JNCiaMy1X9pmDW9fxUDAValpicdBYX1P2nMJ3EUImUJlArelB6
         U0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678357283;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KprGKYQ8KgwaGWUbn17Xz5NYf5KpExwL2NMCF7dMdgM=;
        b=ZDZKxA2ty4FFYrW+ZxtzIMwWlufrfrAXG2KVbZHbEFOlZSjyt0akNYCq4f5oHr9vMV
         Jpgug2JhmyqUJwVy/djagrSloMBLJW54OElCloIVOs/UQx5/THf/ZLpTUyZ5Rm36oL5G
         Ibi3Pk7nDjfh0aiF/QRuUfKmy/0DJ/5dAzKbhYaF47eUjXquF9G0IOb+t+cHmKTbmIML
         QD0Tt+0lCWbZfWZaekbImWU0i0BVidul3JScs7Be8JZL72VbRFJoBMBlBgxCIyNPqvDL
         bbkJqHifFjAE0KtNMHFAQu20j5vWaKlErMn7Ss8OkQSxhDL/S3e1Bhdg7BvHIe47QWBO
         Ienw==
X-Gm-Message-State: AO0yUKW83lUM9JsEwfJILQoQuiqZxZMPeyIG9AWEwjSHrFd5ls5P7EAg
	FAYoDI+YzjLJ8jYjt18QFzE=
X-Google-Smtp-Source: AK7set8//lzFNi6UQdT0Qz69/iAT27g06pbsZrFtDMb8VzTxl8+gMl6jx74dZt+KkxkgfpPWfGRocg==
X-Received: by 2002:ac2:4949:0:b0:4d5:831e:3154 with SMTP id o9-20020ac24949000000b004d5831e3154mr6109888lfi.45.1678357282880;
        Thu, 09 Mar 2023 02:21:22 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id u23-20020ac24c37000000b004aac23e0dd6sm2605330lfq.29.2023.03.09.02.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 02:21:22 -0800 (PST)
Date: Thu, 9 Mar 2023 12:21:18 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230309122118.661e85b4@eldfell>
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 481283EC4E
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: IZPFZIYMVZCXOG4YWZZLKOSP2HPBBCMY
X-Message-ID-Hash: IZPFZIYMVZCXOG4YWZZLKOSP2HPBBCMY
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, "moderated list:DMA BUFFER SHARING        FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul <sean@poorly.run>, Stephen Boyd <swboyd@chromium.org>, Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IZPFZIYMVZCXOG4YWZZLKOSP2HPBBCMY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7839248837315137255=="

--===============7839248837315137255==
Content-Type: multipart/signed; boundary="Sig_/YsnEA9P_sNO1q.G4g.HWGt3";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/YsnEA9P_sNO1q.G4g.HWGt3
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed,  8 Mar 2023 07:52:51 -0800
Rob Clark <robdclark@gmail.com> wrote:

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
> v8: Add patch to surface sync_file UAPI, and more docs updates.
> v9: Drop (E)POLLPRI support.. I still like it, but not essential and
>     it can always be revived later.  Fix doc build warning.
> v10: Update 11/15 to handle multiple CRTCs

Hi Rob,

it is very nice to keep revision numbers and list the changes in each
patch. If I looked at series v8 last, and I now see series v10, and I
look at a patch that lists changes done in v7, how do I know if that
change was made between series v8 and v10 or earlier?

At least in some previous revision, series might have been v8 and a
patch have new changes listed as v5 (because it was the 5th time that
one patch was changed) instead of v8.

Am I expected to keep track of vN of each individual patch
independently?


Thanks,
pq

--Sig_/YsnEA9P_sNO1q.G4g.HWGt3
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmQJsx4ACgkQI1/ltBGq
qqeCVQ/7Bzoz7uNe1NEopzqqHKfxESL0GuvB+Ky+giA53z+1ZulhFzT1AAiKInp7
QOwxDpDiKSJigTT68UUtK7LRc42z41SLnPXF9023LhNJYUw7lC0L7oAmQLqUaeyw
lPuPxOWgY5XPkZWdzJoZVyky4lBS2uGnF8I0+Ek2FTWRVlpGToUiXcHW5xHxH1Vi
aQzqiH/s7EIWSuR8dZtzSTH0uA641e3dt+9AKOGYZQlwCLOdcngZ69vu0bft5pPG
aKrWz6zfX7iLIbwWBJvKzBb4jvKC7gV/7a0p7kwyBPTnJ+TbDS0tWgcwDJ59vTPo
L1Lfysi8uFdx6gSW0P864n+wbh96sPaJE+ZlBc174RTW5XzN0wu9V+phPUoBM7/T
F2G5B8sYKwTMdxA//7PVjviDGDTZ4YHn1MLLRjwhUGF6HfvU0aLrHY5iKOHtUWVc
XAL1exaXtkOMyd5EoezO7zSIQ9umGAQGGffMg15sD7mL+4wIhKY85WehBySfXLUK
PVlTV62a4vdO58ZcWn0U299HPi0ehjQXvHRkFe4D2827dnZNsLd+BEJHzgDmI/l3
x0lGGauKT+X0cexJetComQh7AszbkRrdP4SJGfRxJBrfkiKN4JsTEQ5s6ZoGWBjm
vXZD3smbWhE69Bc3HDJe/HQA/uGYskkrLTL8oV+aYiy+pj21+W4=
=ZIGt
-----END PGP SIGNATURE-----

--Sig_/YsnEA9P_sNO1q.G4g.HWGt3--

--===============7839248837315137255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7839248837315137255==--
