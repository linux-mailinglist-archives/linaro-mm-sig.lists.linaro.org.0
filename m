Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD0C6BE55B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 10:18:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1725E3F4CA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 09:18:03 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by lists.linaro.org (Postfix) with ESMTPS id 3F6473E955
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 09:17:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ThkJ4upO;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.169 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id z42so4344811ljq.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 02:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679044662;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=3uLwGBxnZ1mAAqp3kTFoVsk1Zncv2fMmnt4yJjzaSC8=;
        b=ThkJ4upO2U9CB7ruJSqqqRCeWvmgm8ZAj4QsOTm1eC4gVChNyzDjQlKVuwvk1pO1Fw
         xt7F2HUHYa0c/ylvlXnMBydDEKBF6iDyMDFGwBfHgSp4mHudp+up9hMsJ6HgiUK1EFOY
         pUkT03WY1yR7BwkS4KhtxBEQTsqrR6kGVXk9Cytg4D3yo1j2ojLdWH5oE8RZHoJXgF2x
         Kd1CBEoJEqNmdG9tBeHLiowK59HhG6w+afImzrcdPPUKxmomDpY69VWFAs9DiyBq4zbt
         njWqSx1+A4HuZHg4uS+TAYcgNDOaHLpJFor6KennsYkCUG4gcAa6kw3mk1bxPTAzIaBN
         iGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679044662;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3uLwGBxnZ1mAAqp3kTFoVsk1Zncv2fMmnt4yJjzaSC8=;
        b=ymSVMNpYN/GTO6KAMi2fyq8TizwjH5EMRhB9JjK8U9QXNHR5MsdASa9m+63yTk0GGY
         heFXZsfd+f+9t7GMbB2XlfD3cqXvz2zwpa3pG6aZbm058WYbxR39tmggDg3srZadFrVZ
         nAQVD55oekKZ6YzsJqUww523CdIl/zGolreOGTvygijB9pGMtkkka7evtjlh9Vph36Gj
         DiaPe1CFHmpBt8iaIFN/UcBDuJEXuC/GU1vDOdhrJf/GoZrA2EMlrQDPj2e5Yo6ivH+N
         aiRxnSStlupVa4Dz1xbC7r20pROE7y0WqKUPYBHYXgtsBfwbWEbhmy+t6wLcz9hqS3pA
         7woA==
X-Gm-Message-State: AO0yUKWy8E0H8pwfFq9ZsqnL5ztuj6GMk8ohF1c8u0CN+MMdONIQ4gt3
	uMnZXti/lLn/LR1jz+8WjRQ=
X-Google-Smtp-Source: AK7set8Wy+EAASUZlw92CKWNn4SHSF73SNcbsJZangV3rMR/ZtM8l7f1OxSnUfUPci3N1EtDFWGHmg==
X-Received: by 2002:a2e:6816:0:b0:299:ac58:1c4 with SMTP id c22-20020a2e6816000000b00299ac5801c4mr1330636lja.1.1679044661786;
        Fri, 17 Mar 2023 02:17:41 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id v5-20020a056512048500b004db513b0175sm280708lfq.136.2023.03.17.02.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 02:17:41 -0700 (PDT)
Date: Fri, 17 Mar 2023 11:17:37 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
Message-ID: <20230317111737.48702bca@eldfell>
In-Reply-To: <20230317110921.0862cc8b@eldfell>
References: <20230308155322.344664-1-robdclark@gmail.com>
	<20230308155322.344664-2-robdclark@gmail.com>
	<ZAtQspuFjPtGy7ze@gmail.com>
	<CAF6AEGsGOr5+Q10wX=5ttrWCSUJfn7gzHW8QhxFC0GDLgagMHg@mail.gmail.com>
	<ZBHNvT3BLgS3qvV5@gmail.com>
	<CAF6AEGu1S2CXzRxV_c5tE_H+XUGiO=n0tXjLZ_u_tW-eMqMsQw@mail.gmail.com>
	<ZBLg0t0tTVvuPuiJ@gmail.com>
	<CAF6AEGvV5arZThTyju_=xFFDWRbMaexgO_kkdKZuK-zeCxrN7Q@mail.gmail.com>
	<CA+hFU4xbssR+=Sf4ia5kPdsSb4y9SQUd4nx_2p1Szcbtna28CA@mail.gmail.com>
	<20230317110921.0862cc8b@eldfell>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.24; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3F6473E955
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.91 / 15.00];
	BAYES_HAM(-2.81)[99.16%];
	FORGED_RECIPIENTS(2.00)[m:sebastian.wick@redhat.com,m:robdclark@gmail.com,m:jadahl@gmail.com,m:robdclark@chromium.org,m:corbet@lwn.net,m:ckoenig.leichtzumerken@gmail.com,m:intel-gfx@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:christian.koenig@amd.com,m:linux-media@vger.kernel.org,m:ckoenigleichtzumerken@gmail.com,s:linaro-mm-sig@lists.linaro.org];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.169:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,lwn.net,lists.freedesktop.org,vger.kernel.org,amd.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 5WOCVLGQFDGMSUESL4IHF4MQQF3H7JW3
X-Message-ID-Hash: 5WOCVLGQFDGMSUESL4IHF4MQQF3H7JW3
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Clark <robdclark@gmail.com>,
	Jonas =?UTF-8?B?w4VkYWhs?= <jadahl@gmail.com>,
	Rob Clark <robdclark@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
	intel-gfx@lists.freedesktop.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	dri-devel@lists.freedesktop.org,
	Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	DMA@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5WOCVLGQFDGMSUESL4IHF4MQQF3H7JW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6258753650487114195=="

--===============6258753650487114195==
Content-Type: multipart/signed; boundary="Sig_/Q5zE_g6+8PZb=tpp8CN.PRC";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Q5zE_g6+8PZb=tpp8CN.PRC
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 17 Mar 2023 11:09:21 +0200
Pekka Paalanen <ppaalanen@gmail.com> wrote:

> On Thu, 16 Mar 2023 23:22:24 +0100
> Sebastian Wick <sebastian.wick@redhat.com> wrote:

> > Vblank can be really long, especially with VRR where the additional
> > time you get to finish the frame comes from making vblank longer.

Btw. VRR extends front porch, not vblank.


Thanks,
pq

--Sig_/Q5zE_g6+8PZb=tpp8CN.PRC
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmQUMDEACgkQI1/ltBGq
qqdONw//Rgotd8hOFTtCdsTpbSF7YOFikuzzzDIDxuXPRDAkMFSndLcsdjesT/3L
KZqIPV4Ep1pelG71zllYvYB/cRQ9tMa8iITUhMVcAwYCp7I1645/1yhOJ2HHDiFZ
sWHoek/TEIB46ReOidtjFo2xHX4xWMF5+MNqOevoo3ZB54nqvCTmNZSbisuGaBsn
IVtV98giR2ioxwxsPmrhKufULtu+DP2eQmZv8Y9SIQBIIqlAr6dqF5Z0jwaITRsw
/XK1o0CpJv/L1SEo5Of8XhT7YCU5l16cpUXA4OjPQsHZdIiZ/1+4wcm7seJNSM6Q
D/HKZuvmmE5FJV8M6O7rhKeYmxRefMntg5wngAxwqpuu80PxZa3MRH0dk1wcuvei
EinMcr4IukkOijVlQQ05yDy6SpNUGTOaez0zWy6ftLUI7bNk8jL2DVsgyfU9zkUZ
7QT5CDKTIUtLuCs+5QT7iphcGo+iBq1M9bgQyM2MU26oOOnP95dIFAEXw5Ofcuab
ZxcQDNE22dJlDOj5zGz2r9B30zzaX6E+Tw2CFq6Tm58BBRBv9o9MuM3StNUNuOQ8
lsF9q7BZiuBDr3pFks+YIWt6Ia5Wz/LMw92UYkSx+vnNKcZO3k/kcAYYnpU0izfH
gd082Gvt7zd/rjURoruKFxaG6hQOIzqHZuRukX6Oj4rTSva/mPQ=
=kkpl
-----END PGP SIGNATURE-----

--Sig_/Q5zE_g6+8PZb=tpp8CN.PRC--

--===============6258753650487114195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6258753650487114195==--
