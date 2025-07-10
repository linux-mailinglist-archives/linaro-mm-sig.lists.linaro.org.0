Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB17B007F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 18:01:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3BD545731
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 16:01:24 +0000 (UTC)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
	by lists.linaro.org (Postfix) with ESMTPS id 3771B3EB94
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 16:01:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=3KB+LLN9;
	spf=pass (lists.linaro.org: domain of nicolas@ndufresne.ca designates 209.85.160.193 as permitted sender) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=pass (policy=none) header.from=ndufresne.ca
Received: by mail-qt1-f193.google.com with SMTP id d75a77b69052e-4a752944794so12628971cf.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 09:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752163272; x=1752768072; darn=lists.linaro.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=h2JvzJqEFY8FcNSNGs4AC4X799LbBQx2h7PFI9T2cfQ=;
        b=3KB+LLN9PZXVucaFZkPmcdRrvLb5BFew+AMXNwkJy/LAusFQG0pJggAVVtr/v3arB1
         aPrRRe/YnSFhcfODFMkUf8QteJVhChH4XVWsgcRqgzqd5V42tRthmJ+tCEHh2jKG9DqM
         bCqOsxV+zHym72Su5WaZbY78Pnz53KtiZZsa/a/SdMloPD1ulfjrYEtsHa5uFc2tUo7T
         lmXiwAvDupmYodPs6+sR2905i5Z3TUXm2G1TSRLQp66+wPta/xR0oe+PRAPajUf5f0CM
         Vym1Qx2EULs1UyUi9s8XQDDFSf4vJ3keplVrBVlohzl51vm4RgHLd1m4crWaO3sDcczU
         2Kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163272; x=1752768072;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2JvzJqEFY8FcNSNGs4AC4X799LbBQx2h7PFI9T2cfQ=;
        b=qNCke1D4Qks654F6fDB6iuq3oe7IgGOB/0qR+lKDIGpo4L+yUbH350nDRYPJmWBs6R
         TPD5J4nNbdXUP+L4ckQO+b25ZTliX3lVcAjTYU4+0skIbjQv2+F6SOfZgA4w+zKDDnsn
         dCjQ1MLKq+qWJxzpyJ9UEkYxLdKR1uMElUr2JzTvnUOw2Fq/sWiYexDjlQ3+8ffIb70a
         rifdyI5n0wz2MiXrdyRPSDEwxILY1+vGlOe38sv3PBXudJyDVgCvPhvBJImPkVOqDnHz
         m2/lwunjJ+nzKh/zbzBF3KvHltvtfZybQFevXobGwQNEZPXeKNihBsgVYZ0NjA6pwWbK
         JrJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUE+gj1pZDqbZ+LJyyNLlOdXcseqC7kwKiV/HQcrEnkvC47dfvWo8WXxJbNerHSA38hy6cRGRvQe1PEYuZK@lists.linaro.org
X-Gm-Message-State: AOJu0Yxi5ba07yq9Y72GBqf2ZkV3SD0VQo0GFyiyjUpdO719rrRvXu7F
	cfPsKBAWiY7XJW47Schbv6cKkWl7XGlbhjOHEJtfhIdm2z/CN6xS0yfHKWAI4wccRZ8=
X-Gm-Gg: ASbGncu3XTO1fVJiRSDWZVnLICZ0IHEbCDrZmDuYWiRHXjXNBPgcyEo6Np86oJC4Gzx
	938KeZdnQkGc9PVRikGmuggWNnAS4ZBWCPzijzkZ2PFwaesfhbxZxenzUcGxnKD3ww8Nyb2uNSB
	A003ohazmsPQDf5uTzMCJSAJiqJ23eQxWxlrFBAfzDP9/J+H5YXLKqycZDCpiNXaSQ6baQhYlRO
	DRfx3U4K79khRzl8azTA1WlKQQLGCePI25GK5F6Ynx10IDchRWhieA0C0U6L1Pnf/dAoLmH3/bU
	nJOv3RxhvbxF6PtxpDhJ0cUHJIuym48C2sq+YWmhuqY9PT4gcux7b00hkJ4+NsZh+Ak=
X-Google-Smtp-Source: AGHT+IFbQFapyLU2kvG8JwQQkxoFge/HX+KIphHVjcEQzpniLu173HdtuK79yftQGxLEwpJMC++ZBw==
X-Received: by 2002:a05:622a:8cc:b0:4a4:30a0:39c0 with SMTP id d75a77b69052e-4a9f80b0c22mr23008391cf.28.1752163271437;
        Thu, 10 Jul 2025 09:01:11 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edefb55asm10028431cf.77.2025.07.10.09.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:01:09 -0700 (PDT)
Message-ID: <775b0f527f365fa4217a5d9acfbb80e4f87078ef.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Pavel Machek <pavel@ucw.cz>, kraxel@redhat.com,
 vivek.kasireddy@intel.com, 	dri-devel@lists.freedesktop.org,
 sumit.semwal@linaro.org, 	benjamin.gaignard@collabora.com,
 Brian.Starkey@arm.com, jstultz@google.com, 	tjmercier@google.com,
 linux-media@vger.kernel.org, 	linaro-mm-sig@lists.linaro.org, kernel list
 <linux-kernel@vger.kernel.org>, 	laurent.pinchart@ideasonboard.com,
 l.stach@pengutronix.de, 	linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, 	etnaviv@lists.freedesktop.org,
 phone-devel@vger.kernel.org
Date: Thu, 10 Jul 2025 12:01:07 -0400
In-Reply-To: <aG94uNDrL1MdHJPM@duo.ucw.cz>
References: <aG94uNDrL1MdHJPM@duo.ucw.cz>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0MU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT6ImQQTFg
 oAQQIbAwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBO8NUoEVxMPCGgRvEtlBlFEpYHL0BQJ
 oLLLGBQkJZfd1AAoJENlBlFEpYHL0BEkA/3qkWYt99myYFSmTJUF8UB/7OroEm3vr1HRqXeQe9Qp2
 AP0bsoAe6KjEPa/pJfuJ2khrOPPHxvyt/PBNbI5BYcIABLQnTmljb2xhcyBEdWZyZXNuZSA8bmljb
 2xhc0BuZHVmcmVzbmUuY2E+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQ
 TvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyy+AUJCWX3dQAKCRDZQZRRKWBy9FJ5AQCNy8SX8DpHbLa
 cy58vgDwyIpB89mok9eWGGejY9mqpRwEAhHzs+/n5xlVlM3bqy1yHnAzJqVwqBE1D0jG0a9V6VQI=
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3771B3EB94
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.48 / 15.00];
	BAYES_HAM(-2.78)[99.05%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ndufresne.ca,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.193:from];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[ucw.cz,redhat.com,intel.com,lists.freedesktop.org,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.linaro.org,ideasonboard.com,pengutronix.de,armlinux.org.uk,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2606:6d00:17:b699::5ac:received];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[etnaviv];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.160.193:from]
X-Rspamd-Action: no action
Message-ID-Hash: YGXJ3OBH5JEXCANBJKBMJVZDUG3YPIEB
X-Message-ID-Hash: YGXJ3OBH5JEXCANBJKBMJVZDUG3YPIEB
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-BUFs always uncached on arm64, causing poor camera performance on Librem 5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YGXJ3OBH5JEXCANBJKBMJVZDUG3YPIEB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3201195428342303794=="


--===============3201195428342303794==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Nzv40WcQzqiJQr2kcTPI"


--=-Nzv40WcQzqiJQr2kcTPI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pavel,

Le jeudi 10 juillet 2025 =C3=A0 10:24 +0200, Pavel Machek a =C3=A9crit=C2=
=A0:
> Hi!
>=20
> It seems that DMA-BUFs are always uncached on arm64... which is a
> problem.
>=20
> I'm trying to get useful camera support on Librem 5, and that includes
> recording vidos (and taking photos).
>=20
> memcpy() from normal memory is about 2msec/1MB. Unfortunately, for
> DMA-BUFs it is 20msec/1MB, and that basically means I can't easily do
> 760p video recording. Plus, copying full-resolution photo buffer takes
> more than 200msec!
>=20
> There's possibility to do some processing on GPU, and its implemented her=
e:
>=20
> https://gitlab.com/tui/tui/-/tree/master/icam?ref_type=3Dheads
>=20
> but that hits the same problem in the end -- data is in DMA-BUF,
> uncached, and takes way too long to copy out.
>=20
> And that's ... wrong. DMA ended seconds ago, complete cache flush
> would be way cheaper than copying single frame out, and I still have
> to deal with uncached frames.
>=20
> So I have two questions:
>=20
> 1) Is my analysis correct that, no matter how I get frame from v4l and
> process it on GPU, I'll have to copy it from uncached memory in the
> end?
>=20
> 2) Does anyone have patches / ideas / roadmap how to solve that? It
> makes GPU unusable for computing, and camera basically unusable for
> video.

If CPU access is strictly required for your use case, the way forward is to
implement=C2=A0V4L2_BUF_CAP_SUPPORTS_MMAP_CACHE_HINT in the capture driver.=
 Very
little drivers enable that.

Once your driver have that capability, you will be able to set
V4L2_MEMORY_FLAG_NON_COHERENT while doing REQBUFS or CREATE_BUFS ioctl. Tha=
t
gives you allocation with CPU cache working, but you'll get the invalidatio=
n (or
flush) overhead by default. When capture data have not been read by CPU, yo=
u can
always queue it back with the V4L2_BUF_FLAG_NO_CACHE_INVALIDATE. But for yo=
ur
use case, it seems that you want the invalidation to take place, otherwise =
your
software will endup reading old cache data instead of the next frame data.

Please note that the integration in the DMABuf SYNC ioctl was missing for a
while, so make sure you have recent enough kernel or get ready for backport=
s.
The feature itself was commonly used with CPU only access, notably on Chrom=
eOS
using libyuv. No DMABuf was involved initially.

regards,

Nicolas

[0] https://www.kernel.org/doc/html/latest/userspace-api/media/v4l/vidioc-r=
eqbufs.html#v4l2-buf-cap-supports-mmap-cache-hints

>=20
> Best regards,
> 								Pavel

--=-Nzv40WcQzqiJQr2kcTPI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaG/jwwAKCRDZQZRRKWBy
9BRcAP404riqHZv877jAk3LeonpmR8YSE9c6bNWGPspAtHTMNAEAzVw7ScK+PCWl
1/uUbQsGbqWd6r5mH47vDOU14pKwSQM=
=wFFh
-----END PGP SIGNATURE-----

--=-Nzv40WcQzqiJQr2kcTPI--

--===============3201195428342303794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3201195428342303794==--
