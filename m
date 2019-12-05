Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5825B11441C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Dec 2019 16:51:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88726617D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Dec 2019 15:51:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 756E361802; Thu,  5 Dec 2019 15:51:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 597396180C;
	Thu,  5 Dec 2019 15:51:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05428617D4
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Dec 2019 15:51:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E59C46180C; Thu,  5 Dec 2019 15:51:17 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id D264F617D4
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Dec 2019 15:51:16 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id b6so4255421wrq.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Dec 2019 07:51:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hqk732DASvKhf2WML2uIRMYkZ0MH2kXngVlW9J9XbT0=;
 b=gER6oOzmCn8BJQyNWW8XvIf2eytXQ/jUjynlZuB+9zACsa4q9vn1wTsInQPrApkTub
 8xU4pO6KFrVILDNp27BqcTHtqQKGqnYmiL0SrwTMdnC+vqJo8xl5e1GagWlgBjclqX36
 BHsY90lfWHIz07/bJjsIEn/eRY6o4pJ0C7a/K7E4Yf8N2EU71MSfep9TaBeMrRomblhm
 IOM5LzvWSU2yVGQwz0CuJS8Ll4nDIi6cAmCtW6i5GGzzlfvUnlat+Z26hRlC+WzHPZFy
 SC74fGQQKQwHVmNfmkJRyudX71OELwma1E6ExVDJaknVooWkedN1LqWYVEDS3y+jcUcP
 PZnQ==
X-Gm-Message-State: APjAAAW7zFm5eURWavH88S/D3Vwn3jBosG6G5UFQj3XCmbYfo49pkghr
 yW0YhFwsBk+U62ZtHf6r3jY=
X-Google-Smtp-Source: APXvYqyYNI/Iqvef/isLiabMHdyM4U4tRTb7QCIYp8t0Z+YThXI2bYmaodgFVZDFXv/v95Ow4HY7pg==
X-Received: by 2002:adf:a141:: with SMTP id r1mr11163450wrr.285.1575561075675; 
 Thu, 05 Dec 2019 07:51:15 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id g69sm264905wmg.13.2019.12.05.07.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:51:14 -0800 (PST)
Date: Thu, 5 Dec 2019 16:51:11 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191205155111.GA1914185@ulmo>
References: <20191204215105.874074-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
In-Reply-To: <20191204215105.874074-1-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Match on
	dma_buf|fence|resv anywhere
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: multipart/mixed; boundary="===============4137222283262421317=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP


--===============4137222283262421317==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 04, 2019 at 10:51:05PM +0100, Daniel Vetter wrote:
> I've spent a bit too much time reviewing all kinds of users all over
> the kernel for this buffer sharing infrastructure. And some of it is
> at least questionable.
>=20
> Make sure we at least see when this stuff flies by.
>=20
> Acked-by: Dave Airlie <airlied@gmail.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--6TrnltStXW4iwmi0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3pJ20ACgkQ3SOs138+
s6FuIw/+MiBzMpaE+4A0DS+8Maw2eXygpbNzHbXbT/CqB0Q7kcibeSIUV+xnhWPY
cnxtNxlZWtErROiGrXS2Roj5PYGftBPJVbCpxr4kMjsbVjtKq+iNbuPhfkChvihU
CEP5jHrHzmAQ4vRcVycHHZinm5ABoo+TuBeV7ZXJf1p6ZDDJXRFIBTpA/BxiBwOZ
ONIiq23FNnob0Zk/0r9XvQLyslRpK6FjYRdNO1V8l8OWrI0hQQqmx0kBpIppnxGE
swt90Ak5Vf3pSq2zrNfoVS7QAcuw0/2munEnOiA936SeiKLtEb8CX/j7GmDrXsOl
A2A0Jjhi3WWbxqq6UO1WYxyCSwmWY3WEtLzPd5F7+Henuztpygivh2d3xYCEO+jn
X0jE7Vnp4s2Tgv71Ack2aC/7HzX3WH7BtG//HCs6BF5TCKD9liA3nz+qMBI/ZPaP
6bQJWSJeQsJkEg6md3e2ZC14IOe6Y6UlKKkpwU8yDpY4xyY0IAjAepGh8gdmofVX
JT+O9UbdOmC4Sn5aIw/TdSz2U7mmwaY/+NcgbYlQSsZGtIqS8ASEIcXflC7M/lbG
lkog8ih1RRQ6Xcwhi6s+Tiyn4J6fUVnOaqwwvMxJYhXs7Z+s0KtgzlwGHwpq4ugL
MkKmiO6Ur5Xv5LfotkD39OY6HGy+Nw1XSbtrsPXPXLH70GvEjig=
=Spok
-----END PGP SIGNATURE-----

--6TrnltStXW4iwmi0--

--===============4137222283262421317==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

--===============4137222283262421317==--
