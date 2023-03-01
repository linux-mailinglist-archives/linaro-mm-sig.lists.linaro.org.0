Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A8C6A6943
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 09:57:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E45D140E0D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 08:57:39 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by lists.linaro.org (Postfix) with ESMTPS id 7133D40E04
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Mar 2023 08:57:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=AHfQcnnf;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.173 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id g18so11050151ljl.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Mar 2023 00:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677661039;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=fsdu2Eb3blGInGskJjm04MPUGM6r3/+cVPR317kKk+A=;
        b=AHfQcnnf7rLS73J/+l/ZkiNI0HgDJ8xVO8BYpbgEwVnvuJLTkTbqWEvwn6XOmQJgtU
         o7wjiR7ilWaqA6nVr8C52CnO6UJ6zu0PvU8uWzqzOyVXnQ8LI4zjstNVo6rMKlc/ibnT
         xNrA1/133hRRIzOWlysNfOXvYlwXk5p3WD9vGcWUBUowIkYqEIOAf+WQEV6/Wm+81oxE
         W7xPTUZPs/9uFHI5cpQHN0HRjOCMPvbdzQwgBacAKrsALIzikjiOWw8yTgD8Wx7ziFGV
         XGUJ08pccGAQDlRT2xQnLWYXl9W4xA2EoZURQFBORuULMvNN6lv/Z6TCpsqzoMjOMZ0d
         RHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677661039;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fsdu2Eb3blGInGskJjm04MPUGM6r3/+cVPR317kKk+A=;
        b=Tuiew5CjuSeb/IlrsRuurB5r/sxd9Sg+WqDRQ1OfaZcuG9XAh47QcdnZdItJBuFkP4
         1JX4MHKqEanO6RiG+8pSgyR78uLa+IE7DvpPqsu/XZKJcutgNz86gCRZ/gX0fq45I1YW
         6zMZSo1Xrk/ORGO8obbbdHXPhvEUXFIfh8Mmsz5QxNCrc7jfXuS4VNWnHO9q1Tqd36r+
         JlINoY/ngqA94qj+eiokjXpNoArbC8l8FwVM0PToJXgK8+cELycLpueLxL3kv4hpHbgo
         CvJrjpPsulSLFUa39BVpKxBnq0oJvNfG4fNBTTAkPn854Gy5/qmdr8uKLMOWEerX0pZP
         xG2Q==
X-Gm-Message-State: AO0yUKXMYoj4+vevnacB0Khe/4xxKV6+xanGNzMPOF7KddFg+U6FUR9/
	8+aBYiAQszXE/RCnsz8CeZk=
X-Google-Smtp-Source: AK7set82/gI/ZiXCynTzPaOgWHLc7EeaoJaCL3F3vziWTQUzlK+NQgg2VxzJCzl53/JaLICRBGUtmQ==
X-Received: by 2002:a2e:9e14:0:b0:295:b2a0:498a with SMTP id e20-20020a2e9e14000000b00295b2a0498amr1900824ljk.13.1677661039052;
        Wed, 01 Mar 2023 00:57:19 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id n15-20020a2e86cf000000b00293530f5765sm1556622ljj.113.2023.03.01.00.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Mar 2023 00:57:18 -0800 (PST)
Date: Wed, 1 Mar 2023 10:57:15 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230301105716.75136952@eldfell>
In-Reply-To: <20230228225833.2920879-9-robdclark@gmail.com>
References: <20230228225833.2920879-1-robdclark@gmail.com>
	<20230228225833.2920879-9-robdclark@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7133D40E04
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[194.136.85.206:received,209.85.208.173:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.173:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 7UWGC5A5EEUZOVIKFKSHDKT5Q4QSPSVK
X-Message-ID-Hash: 7UWGC5A5EEUZOVIKFKSHDKT5Q4QSPSVK
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 08/16] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7UWGC5A5EEUZOVIKFKSHDKT5Q4QSPSVK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3728456852311350457=="

--===============3728456852311350457==
Content-Type: multipart/signed; boundary="Sig_/MU0/wWEPl4MipdcOND2ij7s";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/MU0/wWEPl4MipdcOND2ij7s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 28 Feb 2023 14:58:12 -0800
Rob Clark <robdclark@gmail.com> wrote:

> From: Rob Clark <robdclark@chromium.org>
>=20
> This consists of simply storing the most recent deadline, and adding an
> ioctl to retrieve the deadline.  This can be used in conjunction with
> the SET_DEADLINE ioctl on a fence fd for testing.  Ie. create various
> sw_sync fences, merge them into a fence-array, set deadline on the
> fence-array and confirm that it is propagated properly to each fence.
>=20
> v2: Switch UABI to express deadline as u64
> v3: More verbose UAPI docs, show how to convert from timespec
> v4: Better comments, track the soonest deadline, as a normal fence
>     implementation would, return an error if no deadline set.
>=20
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/sw_sync.c    | 81 ++++++++++++++++++++++++++++++++++++
>  drivers/dma-buf/sync_debug.h |  2 +
>  2 files changed, 83 insertions(+)
>=20
> diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
> index 348b3a9170fa..f53071bca3af 100644
> --- a/drivers/dma-buf/sw_sync.c
> +++ b/drivers/dma-buf/sw_sync.c
> @@ -52,12 +52,33 @@ struct sw_sync_create_fence_data {
>  	__s32	fence; /* fd of new fence */
>  };
> =20
> +/**
> + * struct sw_sync_get_deadline - get the deadline hint of a sw_sync fence
> + * @deadline_ns: absolute time of the deadline
> + * @pad:	must be zero
> + * @fence_fd:	the sw_sync fence fd (in)
> + *
> + * Return the earliest deadline set on the fence.  The timebase for the
> + * deadline is CLOCK_MONOTONIC (same as vblank).  If there is no deadline
> + * set on the fence, this ioctl will return -ENOENT.
> + */
> +struct sw_sync_get_deadline {
> +	__u64	deadline_ns;
> +	__u32	pad;
> +	__s32	fence_fd;
> +};

Sounds good.

> diff --git a/drivers/dma-buf/sync_debug.h b/drivers/dma-buf/sync_debug.h
> index 6176e52ba2d7..2e0146d0bdbb 100644
> --- a/drivers/dma-buf/sync_debug.h
> +++ b/drivers/dma-buf/sync_debug.h
> @@ -55,11 +55,13 @@ static inline struct sync_timeline *dma_fence_parent(=
struct dma_fence *fence)
>   * @base: base fence object
>   * @link: link on the sync timeline's list
>   * @node: node in the sync timeline's tree
> + * @deadline: the most recently set fence deadline

Now it's the earliest deadline.

>   */
>  struct sync_pt {
>  	struct dma_fence base;
>  	struct list_head link;
>  	struct rb_node node;
> +	ktime_t deadline;
>  };
> =20
>  extern const struct file_operations sw_sync_debugfs_fops;

Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>


Thanks,
pq

--Sig_/MU0/wWEPl4MipdcOND2ij7s
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP/E2wACgkQI1/ltBGq
qqecHRAAjhjC3dSJPLKHaSsAI7cQzzt5Abml2ibr0Hei5R3tGeGmDsNslkWJiczW
/gh9o8CnyF9qlqm9gddyeVoOyRmIv6g7VeP2NWPC/QafUPLZs9cDatt581PhPWty
yHDgpksmTJmoOr+SoyrcIJLJiLv6+a22VycokaxFfIsIYXmG6PJxkFcFHRf030c9
QllXKDA2kPgCOy2df7cNasmwvirmScRaK/FqJr83xVx0CndUyc0uj3KUZl183whQ
r5mNQ2uphXXX4ceFdoFLoDpD3fc2+nO0q1Z+i+/+C7sZIglJi7wxCyfV5Qtw4vrW
qpxE+D8Oo+bRRtsofNJmran3RnPWeG6XCJ1z6ZlkP38hhaTxU3BIUZmkoaYM1of4
es+Q+f7gzf7BJNWcgAjs7bJecBr/H19eGWIg+zh+1MlfrdtqAIA1OlzPZc78JMt5
59IZx6k23ESS1g9Rfiw/9J2feQa1ZCO2oON3tqpbi/hgXUsTyR3V8x1Qu91898aR
YZSXIidMH3GV8phN5m1oht/3KU2U482zZ35O+u+dlkJ04v+Aimx/UDsA5r74P5lN
C+WkRYhlbBYCnqz9bgm1Xo8moXDuQi7u+9sABhIRIrywUm2JQ28LU/4UnsRK+epf
DNEY/D0KQO4hZ1J4zUBN2G0t1u+XTbpBHBwaFj5HKki4QAnFDNU=
=7DNe
-----END PGP SIGNATURE-----

--Sig_/MU0/wWEPl4MipdcOND2ij7s--

--===============3728456852311350457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3728456852311350457==--
