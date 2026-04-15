Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mI07Ic9l5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F2827431EDE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A81B4406B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:41 +0000 (UTC)
Received: from mail-pj1-f97.google.com (mail-pj1-f97.google.com [209.85.216.97])
	by lists.linaro.org (Postfix) with ESMTPS id 52CD13F7E8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 01:08:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=broadcom.com header.s=google header.b=ftubcH52;
	dmarc=pass (policy=reject) header.from=broadcom.com;
	spf=pass (lists.linaro.org: domain of zack.rusin@broadcom.com designates 209.85.216.97 as permitted sender) smtp.mailfrom=zack.rusin@broadcom.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-pj1-f97.google.com with SMTP id 98e67ed59e1d1-358ed696623so2736306a91.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 18:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776215297; x=1776820097;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J6bEMmAi+Vdzjy0R/hpVfcb/J8SFZ5vLhAuVwKcfZhw=;
        b=d4+uZAGktO3mN29fD8tTyNGWSexHKSTCSQxy0RKKQM7LRq3umM9wGQnMgYWEiARRLa
         9dbdjEqTRkXH80X7AhBozH1P8+/NPEFQB9o/YBNqlmM6Qv7b7ljil4rIwYNkR+PGROAm
         SivEiu8rIIRhfKUWeQmeWz6OGbKVXypk3BgjvxQQ1Q6X72yJhoXmAz7vb7sNJTtcPQHS
         3Hr24p3f+HwtkxRCC2hDb5mLrt/P9tvRm8k4TcvQdheB4ycTK+LKwf1jTtjghVmybOcO
         aAb+hXRrBpFHppiHVPzeNk3q4gxA6qroJ2+EujEmj08y80DeVhHc9d/SeBLhn1fpO5d9
         ZkMg==
X-Forwarded-Encrypted: i=2; AFNElJ+LEsc1QA+ziuaColI+5zFSx3iCyS6xhisCG+Hy8DrAyCTtGPCPCZZDzIGB3OMT1D4ugQ4Q496kI4lo8lUj@lists.linaro.org
X-Gm-Message-State: AOJu0YxkDbtjwzH7CqCNqiuQuaVFYg9v03p6G+FYwT2ysoxwNuVcdiJR
	DuYQ02bbJj//6qshOji19t271NABIGOGV9tc4tZ+HOTO+9UloBXBJDQWvdmYBj+kt4f4rW0GzVY
	NI9Q/4M4wItHTuIoNr1ivz5mY+syBypDqFlMmvnWhHl/M0btjk5hisNwIpR+vHe0pCeAR0GWaoy
	oOIBtoC76YMrTg/E02gTILk/MZ2wx7WFIjqp7iJ5ftFHKO+MyjCBpGANw5cZDH+Lj1IarYCnRZE
	5iSwKCO0Hsds/80lRM=
X-Gm-Gg: AeBDieufcj4ibgrYpdFJFWep8PZWx03ha/XR9GTh+q+cXW8/cQVFYpq1ZOETdE4ZTj8
	/ejxRsQZ0aAsGS6s1jY4C+UHaYrVS29cwYlB3GrGW8qv9Fi56dL2Gueo2Y1N4/Chv6H8fRsjfHZ
	bc6kEM50dGZpUqYu8bod9zdQhX1Yld19vulhbGzcj+z1OmjQACphnZBOW2G0hUg7vWwALHvtGJp
	VeLszX7STzDfFYrx63dSQysO8R92wVhK3XjKRjJW/4NCYDs52AzU3uQo4hON+iH0uW09zCoI9AS
	LbMLeaPH3gUkaC3KpF5Lm9vkvMStlyunN2qAPhaK46WetGraOaOUySnEsmrPtMu9+tukIGt2jfs
	XXhkKklZm29YcJ4XSkpSWtwHJUAlhx/trp7hl1a2N3bl21gtTe13WRBS4ojRaBRX7uVH55PtowK
	j9qbHkIJ/Ho23vKo3OXd3SuhjFMrPyYPwgW8SisTCTXFPk/KsaunMiRd8TbOg+H9ML
X-Received: by 2002:a17:90b:3dce:b0:35f:b313:84ca with SMTP id 98e67ed59e1d1-35fb31388cfmr11486832a91.27.1776215297189;
        Tue, 14 Apr 2026 18:08:17 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-15.dlp.protect.broadcom.com. [144.49.247.15])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-35fd31933c8sm4502a91.7.2026.04.14.18.08.16
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2026 18:08:17 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-5a3febf3b1cso1589775e87.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 18:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776215295; cv=none;
        d=google.com; s=arc-20240605;
        b=Y3J6fnTXKdHWlr7viRCNTdnj2nlaC+pOnRP7fjn2bP+LWr7mzxwm4YBaRRz7apeXfg
         +h0Zb0OHwkLH7kMF2mLbZV/FaCB092tBeFiFbVzcYXaBbaFOGAGK9v23y/umiJINWypX
         Xyv6zX3StraGu31XxZ8gerzzLWA3UJeODEjDFMrGWGIZ4zYwiOx6r2PJI3jXFziVUfzJ
         xT7OYU2PrNYPLHFdDh1ho303R8tb4Ku5sIgWfNTNVUEjgIlDbplyoPs+hpHp53N+uGPN
         UYpp3Ep9GtP/+KiH/DtwxWEubBMj0mVBgiOM2hKai9tubKUdMJMaMYCeOBlWIzFFdRm0
         jztA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J6bEMmAi+Vdzjy0R/hpVfcb/J8SFZ5vLhAuVwKcfZhw=;
        fh=BKHCeC8pQ+6R5ID4Yh6Jq2hMQ7NsffTFfya0n77RjLA=;
        b=XJG85VsgSE4I1dPb2Xoqydbm1AWXfrhfH1gpVTTbQ8Mxr/em9Jz9cjaUFhcJdE8zTw
         gcgr9Q/tynTD2wiXR9jx8QLeZgS1ml2pTvHvwHPhewHGQDc47OWKh62GPXljND/PFjtq
         lEPcU9NwdyDieXQILnA2snV4dv6BA0J+Zm6lqUlgrz4rZIQ0Ti3xgt4Mka6j7v/rhjRT
         Fvv0fvm7zVStp/JWy1a5BgHZq4ZOMsN5vjK3szzcth9laHVqjEtB8fWMOO9j1lpYliCi
         goVitR9lxt0qtZeiUwyVsS3DkCDXl56hDKhHSOuy0fKbKTuFVZoS7VTwB6gKyvOC5xSp
         liMA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1776215295; x=1776820095; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J6bEMmAi+Vdzjy0R/hpVfcb/J8SFZ5vLhAuVwKcfZhw=;
        b=ftubcH52CWESBlzRDwh3jzgc1U8q3vAQkvIXQhO5qWUy8v3j+WBZZ8Bg51QeLKkZe8
         U0wulzJMWlJCLQhZC4JlpXHvHy1DUQunc+R1bQPX07lGFk2isqgfA4vmS2DYA080ULUC
         HBrv9CP+y2eWPSKD2+PWoTIQ3tPyBw5u6NlcQ=
X-Forwarded-Encrypted: i=1; AFNElJ8cCFVwoCf3z1PxpKipV6XP91SqieZmXB3Gr2pQjL3I0eEaeLCpFvjDLp665V6qoIEzSKkM9LhcQcoAxcm5@lists.linaro.org
X-Received: by 2002:a05:6512:3b28:b0:5a2:c210:4631 with SMTP id 2adb3069b0e04-5a3efb281d6mr6506455e87.24.1776215294985;
        Tue, 14 Apr 2026 18:08:14 -0700 (PDT)
X-Received: by 2002:a05:6512:3b28:b0:5a2:c210:4631 with SMTP id
 2adb3069b0e04-5a3efb281d6mr6506440e87.24.1776215294435; Tue, 14 Apr 2026
 18:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260414105529.9883-1-popov.nkv@gmail.com> <ecf4cd01-b05d-4f51-943a-631cc4b27331@amd.com>
In-Reply-To: <ecf4cd01-b05d-4f51-943a-631cc4b27331@amd.com>
From: Zack Rusin <zack.rusin@broadcom.com>
Date: Tue, 14 Apr 2026 21:08:01 -0400
X-Gm-Features: AQROBzB9xDYvxtGn-vVFYidT-0afNkRbq08eF7asqpx7x2PE8EMbH6-BtwZ2p0U
Message-ID: <CABQX2QMH2XFcuz00DQQWU4uKw2B8OzE4rCE5=8LMXDg4t0AqWQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Spamd-Bar: -------
X-MailFrom: zack.rusin@broadcom.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F5FQ4DOZN5S7RDBVCV2LLNJIUKBLV4RE
X-Message-ID-Hash: F5FQ4DOZN5S7RDBVCV2LLNJIUKBLV4RE
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:30 +0000
CC: popov.nkv@gmail.com, bcm-kernel-feedback-list@broadcom.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org, stable@vger.kernel.org, Ian Forbes <ian.forbes@broadcom.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15901/15901] drm/vmwgfx: fix NULL pointer dereference in vmw_validation_bo_fence()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F5FQ4DOZN5S7RDBVCV2LLNJIUKBLV4RE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6860021053262976147=="
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[broadcom.com : SPF not aligned (relaxed),reject];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[136];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[broadcom.com:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[zack.rusin@broadcom.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,broadcom.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linuxtesting.org];
	NEURAL_HAM(-0.00)[-0.985];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: F2827431EDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============6860021053262976147==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000bb2bb4064f7559b4"

--000000000000bb2bb4064f7559b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2026 at 9:25=E2=80=AFAM Christian K=C3=B6nig
<christian.koenig@amd.com> wrote:
>
> On 4/14/26 12:55, popov.nkv@gmail.com wrote:
> > From: Vladimir Popov <popov.nkv@gmail.com>
> >
> > If vmw_execbuf_fence_commands() call fails in
> > vmw_kms_helper_validation_finish(), it sets *p_fence =3D NULL. If
> > ctx->bo_list is not empty, the caller, vmw_kms_helper_validation_finish=
(),
> > passes the fence through a chain of functions to dma_fence_is_array(),
> > which causes a NULL pointer dereference in dma_fence_is_array():
> >
> > vmw_kms_helper_validation_finish() // pass NULL fence
> >   vmw_validation_done()
> >     vmw_validation_bo_fence()
> >       ttm_eu_fence_buffer_objects() // pass NULL fence
> >         dma_resv_add_fence()
> >           dma_fence_is_container()
> >             dma_fence_is_array() // NULL deref
>
> Well good catch, but that is clearly not the right fix.
>
> I'm not an expert for the vmwgfx code but in case of an error vmw_validat=
ion_revert() should be called an not vmw_kms_helper_validation_finish().

To me the patch looks correct. This path is explicitly for submission
failure and does BO backoff plus vmw_validation_res_unreserve(ctx,
true). The backoff=3Dtrue branch skips committing dirty-state /
backup-MOB changes, which is only correct if commands were not
committed. Here the commands have already been submitted; only fence
creation failed. So I think unlocking BO reservations without
attaching a fence, then letting vmw_validation_done() keep taking the
success path for resources is correct.

iirc the same helper is used by execbuf, and the shared-helper fix
correctly covers both paths so this is probably not only a kms issue.

Untangling this code would make sense because it's confusing, but
that's not something I'd expect Vladimir to do :)

z

--000000000000bb2bb4064f7559b4
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
6U6qgI8F5eiKsQyE0HgYrQJx/sDs9LLVZlaNiA3U8M8CgEnb8VhuH3BN/yXphhEQdJXb1TyaJA60
SmHcZdEQZbl4EjwUcs3UIowmI/Mhi7ADQB7VNsO/BaOVBEQk53xH+4djY/cg7jvqTTeliY05j2Yx
uwwXcDC4mWjGzxAT5DVqC8fKQvon1uc2heorHb555+sLdwYxAgMBAAGjggHYMIIB1DAOBgNVHQ8B
Af8EBAMCBaAwgZMGCCsGAQUFBwEBBIGGMIGDMEYGCCsGAQUFBzAChjpodHRwOi8vc2VjdXJlLmds
b2JhbHNpZ24uY29tL2NhY2VydC9nc2djY3I2c21pbWVjYTIwMjMuY3J0MDkGCCsGAQUFBzABhi1o
dHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3I2c21pbWVjYTIwMjMwZQYDVR0gBF4wXDAJ
BgdngQwBBQMBMAsGCSsGAQQBoDIBKDBCBgorBgEEAaAyCgMCMDQwMgYIKwYBBQUHAgEWJmh0dHBz
Oi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwQQYDVR0fBDowODA2
oDSgMoYwaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3I2c21pbWVjYTIwMjMuY3JsMCIG
A1UdEQQbMBmBF3phY2sucnVzaW5AYnJvYWRjb20uY29tMBMGA1UdJQQMMAoGCCsGAQUFBwMEMB8G
A1UdIwQYMBaAFAApNp5ceroPry1QLdugI4UYsKCSMB0GA1UdDgQWBBQNDn2m/OLuDx9YjEqPLCDB
s/VKNTANBgkqhkiG9w0BAQsFAAOCAgEAF463syOLTQkWZmEyyR60W1sM3J1cbnMRrBFUBt3S2NTY
SJ2NAvkTAxbPoOhK6IQdaTyrWi8xdg2tftr5FC1bOSUdxudY6dipq2txe7mEoUE6VlpJid/56Mo4
QJRb6YiykQeIfoJiYMKsyuXWsTB1rhQxlxfnaFxi8Xy3+xKAeX68DcsHG3ZU0h1beBURA44tXcz6
fFDNPQ2k6rWDFz+XNN2YOPqfse2wEm3DXpqNT79ycU7Uva7e51b8XdbmJ6XVzUFmWzhjXy5hvV8z
iF+DvP+KT1/bjO6aNL2/3PWiy1u6xjnWvobHuAYVrXxQ5wzk8aPOnED9Q8pt2nqk/UIzw2f67Cn9
3CxrVqXUKm93J+rupyKVTGgKO9T1ODVPo665aIbM72RxSI9Wsofatm2fo8DWOkrfs29pYfy6eECl
91qfFMl+IzIVfDgIrEX6gSngJ2ZLaG6L+/iNrUxHxxsaUmyDwBbTfjYwr10H6NKES3JaxVRslnpF
06HTTciJNx2wowbYF1c+BFY4r/19LHygijIVa+hZEgNuMrVLyAamaAKZ1AWxTdv8Q/eeNN3Myq61
b1ykTSPCXjBq/03CMF/wT1wly16jYjLDXZ6II/HYyJt34QeqnBENU9zXTc9RopqcuHD2g+ROT7lI
VLi5ffzC8rVliltTltbYPc7F0lAvGKAxggJXMIICUwIBATBiMFIxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBSNiBTTUlNRSBD
QSAyMDIzAgxhPxw+eieHWB40hPkwDQYJYIZIAWUDBAIBBQCggccwLwYJKoZIhvcNAQkEMSIEIJbU
+Ul2Ju230MA3piovGJ+/oE+VmOysjBq8WgmmmKaMMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
HAYJKoZIhvcNAQkFMQ8XDTI2MDQxNTAxMDgxNVowXAYJKoZIhvcNAQkPMU8wTTALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQcwCwYJ
YIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBABBa5jgr3/OuBTC1lDJjNPgvsppmGdM6Q6JA3BBA
uLZ6K0OwXUJYVyai2eFDJKjM0Tlk+hyn1bYrW1WvfXBkfvl90BYFFMOH1VvqtTU7ftdjfbsJL9ej
0owoDkug41eKCVHoHVl91rcIS6D3G6y3t6BzuKqhzdNYs7Kyj7wRoNHw2YHC1ySM98dQRa1wXqwM
ugK938rLCbH0S+WUDpM/OWJW6LmhnSGqZ6fi9GYOk9CA435iROfAWVEN3GtcJsQZa1DvN4j+EeN/
kuRHfWzW446PPVl5SPzLXYW+mZH9WAHKdyDysRalQm1kdYqIeTIVnCBgD4mFOm799BYuQFkPfXk=
--000000000000bb2bb4064f7559b4--

--===============6860021053262976147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6860021053262976147==--
