Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AD4610913
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 05:54:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B8E93F5A4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 03:54:24 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by lists.linaro.org (Postfix) with ESMTPS id 0D6243F573
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 03:54:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=dUYSa32+;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.172 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id 192so3791506pfx.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 20:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SsqVuyl6BD6W3LOL9WC66L6RjSvAiVZfFFErAmVMHQE=;
        b=dUYSa32+9bO+LCOLFp+rBQ0F5Pnx+isYGovlF40t2/P9vWnEiDG1Q8itO/+XkeTfSv
         zeWWwwKbS7UPTj37mKzqvzWyo/9u79rMxtpNLZCnsQzGCKG4/XQEGI6rWazC+esHIrR9
         btLXbLJDJGt0QWJbBzwMHmRSR3zavgOTLsv3dHhkf0LRDL8A+8mbGkgYFXyRzhuBME86
         10p2gPkZHql6RgTLb1NnMmQGPGAKRLo8YbKihP4ZEHe9sgtbn0EsxUvy7e386JtBMfKD
         5P2utkAPzf/afxV4NKBCtAnnAe9Xynyms7eS195Tln69ZL4ofRdB8AwNHZDVRwsk8AX9
         RCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SsqVuyl6BD6W3LOL9WC66L6RjSvAiVZfFFErAmVMHQE=;
        b=eBf1YTY8euocqSJh4nv7WvLMtmcYQCpR0BxFk1tLfSZpCZC73qLr/29sun7rFpW1lb
         QliKGMg7hcv1KSqKUY9xld8kXkVrEM9kcDEgH0UI4o1c4cFKCZdKvqvBdXryyLvT1m02
         zaXUOFOf1TxbAfbz53Yn7GjK7HFWOZSD0T8bRtVtEE0/ctHv1jzTITm+IuoBpo7HyVao
         MFfmzNsPOStXVSRUloFUN5QGWCy0TqigWfUGI9C8cJcxau4NURD49erWSxfwiHV3YbvC
         wiA6D7hjPObXSMZV4eVUioqgJK6rjgVVvNMVCUVWgxPpaeo2RNdnvZqbgM3Qkktg70OY
         i3RQ==
X-Gm-Message-State: ACrzQf1Jk35yPDCSpv39pgJ1I56FiZg63fI5Zst4kA1rtTXo6r5ktX6h
	qwpEFSttLzqApLZz8lTOR9U=
X-Google-Smtp-Source: AMsMyM4bStqmnjlTlD7oXh4az3KTHKmmK9eUmdVgeh7CmFo5zsALPHcOUlMD7hSZndCAJD9JRpyh8A==
X-Received: by 2002:a62:174a:0:b0:56b:9fc2:4ebd with SMTP id 71-20020a62174a000000b0056b9fc24ebdmr28907080pfx.21.1666929246176;
        Thu, 27 Oct 2022 20:54:06 -0700 (PDT)
Received: from debian.me (subs32-116-206-28-58.three.co.id. [116.206.28.58])
        by smtp.gmail.com with ESMTPSA id b79-20020a621b52000000b005618189b0ffsm1888035pfb.104.2022.10.27.20.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Oct 2022 20:54:05 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 3F7BD10030A; Fri, 28 Oct 2022 10:54:02 +0700 (WIB)
Date: Fri, 28 Oct 2022 10:54:02 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Message-ID: <Y1tSWo+eRvkVofbv@debian.me>
References: <20221028014422.16422-1-mark-pk.tsai@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20221028014422.16422-1-mark-pk.tsai@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 0D6243F573
X-Spamd-Result: default: False [-8.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.981];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.172:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,gmail.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: FHCICDOWU6LMILKIR65HRO6J6GS32AIB
X-Message-ID-Hash: FHCICDOWU6LMILKIR65HRO6J6GS32AIB
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, yj.chiang@mediatek.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: cma_heap: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FHCICDOWU6LMILKIR65HRO6J6GS32AIB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7504288256479101410=="


--===============7504288256479101410==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9jroqsdkTIsPFvYm"
Content-Disposition: inline


--9jroqsdkTIsPFvYm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 28, 2022 at 09:44:17AM +0800, Mark-PK Tsai wrote:
> Remove duplicated "by" from comment in cma_heap_allocate().
>=20

This patch isn't typofix but duplicate word stripping, right? If so, the
patch subject should be "dma-buf: cma_heap: Remove duplicated 'by'".

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--9jroqsdkTIsPFvYm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCY1tSWgAKCRD2uYlJVVFO
o7b5AP9yoSZf7rdWvcCNTl0/IR/t+dbwcnJqX/nlQZpEECxVKQD/Z3fAqDYIRA+n
wGfL9LkOMEPw+7g5fFLl5BC/vBZFBgw=
=krRN
-----END PGP SIGNATURE-----

--9jroqsdkTIsPFvYm--

--===============7504288256479101410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7504288256479101410==--
