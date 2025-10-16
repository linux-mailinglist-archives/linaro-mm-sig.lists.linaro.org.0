Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C47BE2DB0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 12:41:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4C5745525
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 10:41:09 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id 3D92444872
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 10:41:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=l+P3lWEe;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.53 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-33b9dc8d517so561421a91.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 03:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760611265; x=1761216065; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LVSu3v5hQ+mkImsLsDrLueW7tnWFr04YL/mKk3BRmmc=;
        b=l+P3lWEekilI1IayrGPv8JoL0F67lDpJQ317pIOAwblexgLm4hx6j4mabnxYLuHEIp
         N5HRxyq8P23xwL1dunUS7v9Coe1gpNcEyvg59KoqEA0LE/So6IiQhiKHbVqKbQd1x0qK
         RFAxgfmB2On/zxZuMrntSUUInZXsq5vNi4/U27K0WPpTQllfiGA4EiVAage8NbpQp+fj
         6rydrKTlCLgjWikZQSKhpy1+0ImL6a2PgQAD4lq57LJSK/+hjg/kWF8QTCyq0c1ZMg3e
         LviElP+PqzeDNzLmC+SXVPBYF1w5MDpqvC2sZbGE0MPWyJoaaoDjHfIu2HP53d/cWBur
         v8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760611265; x=1761216065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVSu3v5hQ+mkImsLsDrLueW7tnWFr04YL/mKk3BRmmc=;
        b=rDdiiqvC+wGgXXnJ2rgvoIl1lJM0fGdw4NAMpHc0NxE5ySqyJYNHx+4ZFDnoDPnO25
         Qq5Ojenm+CTVjCY8nO7080nFeCifykJLJC2pRlKImez8R/5PzNDlHUfUePZe15sCkKuE
         Uy5ttVsEEafIIyyxg4EckN+pfNAyahVrdKmBYYy7uoFqf/2q/oXd/o1xBU/mcc0OFaVj
         Aqd+od/RYHdXSHywJlOuhc2eYrtojwcxE5cxQ0hngJ/NmQlXX0GWbXaQ76g/ffweLRKb
         JbywHFQMyXloOzeTY7E4RmI2+7gFvUxk6DbqHFSjqLXlX7bz5piHQuJMH/nl1wIcq7q+
         zMsw==
X-Forwarded-Encrypted: i=1; AJvYcCXSR5xkveSc5x26DRCrYRvdalTZJksJ2AIqeZp/ifhuU+t/VoiHhVWoHNm27Z4hNzvhkw3YE6+j3WL95PtI@lists.linaro.org
X-Gm-Message-State: AOJu0YyUn8UfnlCg+8mlDY6/aN/UMKUUks+3XVPrHKSbR6Nr7Lh+Olvc
	8Gxxqn2kEbsje/QM7Yc7sbDZNNo7c99i+05ixfzH8iqfWaNhGTeLr/vL
X-Gm-Gg: ASbGncu1NJfBOPh072EaewEBZJG38Lim4dmv9G9ej1Qezho7hymQpA1VYVd4ITpT53O
	pdOHX1TegjJzQ2JkRGusk13g+W0V79e/aqBn8aqfI9hg1gRmQz7nTvunGtGZf0k5GEJLKBb4wyF
	r1buCBfA518+1+1zvymtswE/gxGIUH79V3U3unxqF/zq8g7pK9PiBBwzfu7CMdBOZ9LaS9gV9Zv
	TweH6YTypeBj+RYzlLrdbVFby3VAF5DTBlHjGjGPYZZGUpJqHQa4sWEv/5a4KYpgK11F5F6Tjr8
	N0HU/Wz21b7qtN9yqqAQny/did1+DCOwTxq8NeTrQWRbkc8I1mYHrtEP+Eb8DR9OlV3KvP9BOwr
	2vSqp/2zDFCgVGBZBRJzz3Owxp0S4hy4sImISPl7aVAsLZ7gOlw7VujjSsNWHuFRzovbaom06Zm
	v3CEtWzIBRUC02sA==
X-Google-Smtp-Source: AGHT+IE1H0Qo6arbd/0sw3nK8Wog5439Kuk67M2dNIEm8atK9BLJ3NAIUD/arp5nW0PclXPHJb8yBA==
X-Received: by 2002:a17:902:ecce:b0:271:b6b3:71ef with SMTP id d9443c01a7336-290273737a0mr409664895ad.43.1760611265161;
        Thu, 16 Oct 2025 03:41:05 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099385d9esm25928775ad.45.2025.10.16.03.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 03:41:03 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id 02548400365D; Thu, 16 Oct 2025 17:41:01 +0700 (WIB)
Date: Thu, 16 Oct 2025 17:41:01 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Kriish Sharma <kriish.sharma2006@gmail.com>, sumit.semwal@linaro.org,
	benjamin.gaignard@collabora.com, Brian.Starkey@arm.com,
	jstultz@google.com, tjmercier@google.com, corbet@lwn.net
Message-ID: <aPDLvQaZX7M5D1tv@archie.me>
References: <20251016020912.1653230-1-kriish.sharma2006@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251016020912.1653230-1-kriish.sharma2006@gmail.com>
X-Rspamd-Queue-Id: 3D92444872
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.53:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,collabora.com,arm.com,google.com,lwn.net];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[103.124.138.155:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.53:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CUMTUZIL4ELT457A6Y2INY5Q4W5I5QOU
X-Message-ID-Hash: CUMTUZIL4ELT457A6Y2INY5Q4W5I5QOU
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] htmldocs: userspace-api/dma-buf-heaps.rst: fix block quote warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CUMTUZIL4ELT457A6Y2INY5Q4W5I5QOU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8593456868388062885=="


--===============8593456868388062885==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ldeZ5wTTs5GzBIeN"
Content-Disposition: inline


--ldeZ5wTTs5GzBIeN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 16, 2025 at 02:09:12AM +0000, Kriish Sharma wrote:
> diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentatio=
n/userspace-api/dma-buf-heaps.rst
> index a0979440d2a4..c0035dc257e0 100644
> --- a/Documentation/userspace-api/dma-buf-heaps.rst
> +++ b/Documentation/userspace-api/dma-buf-heaps.rst
> @@ -26,6 +26,7 @@ following heaps:
>     ``DMABUF_HEAPS_CMA_LEGACY`` Kconfig option is set, a duplicate node is
>     created following legacy naming conventions; the legacy name might be
>     ``reserved``, ``linux,cma``, or ``default-pool``.
> +
>  Naming Convention
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20

LGTM, thanks!

Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>

--=20
An old man doll... just what I always wanted! - Clara

--ldeZ5wTTs5GzBIeN
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaPDLvQAKCRD2uYlJVVFO
o9hmAQDFQdWAy7dyIyVP0SLEEl2pGTkPA49V3t68gWb/RcemuAD9EEE+wGcnfP5g
y0D3QS10Sw9x4aNHuLSknmnEamh0YAg=
=ADLh
-----END PGP SIGNATURE-----

--ldeZ5wTTs5GzBIeN--

--===============8593456868388062885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8593456868388062885==--
