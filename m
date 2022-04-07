Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBB34F7AC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:00:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7A823EA4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:00:46 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id D3AC3401DD
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 08:59:59 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id bh17so9395071ejb.8
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 01:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0ov3S8RZTCggS0GEzbXNpgrQxhDHVpnmFzd0+6eO884=;
        b=SoL7FLKQx/b0y1RqtsFfK/KKbCbxrAQgM0p11H+ohbXN7bbcetc864N7HTyFln1EV0
         EsdS3oa9agYsu401LN3KFheViE/A2LgRw+oEdD7NYVc+ztOtu5a2f/jbx6Y1ExVwKGjd
         ZzqqhVBgj/2xDnjIpSw27/txMKWaE9dUlg7L8htLVYbVEXWniv17Y73A4fd0kx5NDoqy
         7BCz0uXgSjdy8SLvDQwuPBnqIW9ZZP05RRPae63eKfix7qZ8voNf39OnUEQxfa1JRAMh
         jNiustN/xvluOU2fsd1DOESHsA4wIrrbUZ7BKMrLhbfTsBGszdy1PQIAMwWTxXfNMdzd
         OQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0ov3S8RZTCggS0GEzbXNpgrQxhDHVpnmFzd0+6eO884=;
        b=61akjpjz6/7ACEJHZVxPIa3gtnmVcP1Mm6lz6HM+2AzB+SK8q2DfehX+1UPwAhwoQU
         nXjZlrbiHsB/LUyNB08HRW/mGZxGnefcFTzTQ1byCIvjUUlxc8tGqYXoIsQ9sF8sshoZ
         1PCy6hIrGpl6Qdty5rVpuF4odW8U8DVP34LMuuR+L0o8X1iYGKWvYpfJTW+WcGOMEvl8
         Jl9Vt36ci+krhYd14ymFXRPOetyNMCIdm1k5XDDvWyt3NodifGxMTb1p1+ww3udE/I9u
         MWENNgmDx0pA9rMRqPmTYtShW7F71yGagfz8GuutuZKU4PiMXZ08r6s7Ru6Y2T6+sFEd
         cOfQ==
X-Gm-Message-State: AOAM532bL2KNPXi43l2Roonsd8mv4Xje8OpXhHklGWvb6g1KRygZKOSA
	aDADvZv8ZWkFUWdoEJhjvrg=
X-Google-Smtp-Source: ABdhPJx5XXdRljepf+g/LnGaehJT/bMOkDj5bEiDu7hHb47Qc8rfGy+jdo3yes9DUgGAvINqso3pyA==
X-Received: by 2002:a17:907:6d9b:b0:6db:8eab:94e0 with SMTP id sb27-20020a1709076d9b00b006db8eab94e0mr12115593ejc.687.1649321998884;
        Thu, 07 Apr 2022 01:59:58 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.01.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 01:59:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:39 +0200
Message-Id: <20220407085946.744568-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 47IOME7LBQ5JY7KFHVE2MDAD5Q2VKXWV
X-Message-ID-Hash: 47IOME7LBQ5JY7KFHVE2MDAD5Q2VKXWV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/15] RDMA: use DMA_RESV_USAGE_KERNEL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/47IOME7LBQ5JY7KFHVE2MDAD5Q2VKXWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2Ugb25seSBuZWVkIHRvIHdhaXQgZm9yIGtlcm5lbCBzdWJtaXNzaW9ucyBoZXJlLg0KDQpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpS
ZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCi0tLQ0K
IGRyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMgfCAyICstDQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2Nv
cmUvdW1lbV9kbWFidWYuYw0KaW5kZXggZjk5MDFkMjczYjhlLi5mY2U4MGE0YTUxNDcgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQorKysgYi9kcml2
ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQpAQCAtNjgsNyArNjgsNyBAQCBpbnQg
aWJfdW1lbV9kbWFidWZfbWFwX3BhZ2VzKHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqdW1lbV9kbWFi
dWYpDQogCSAqIHRoZSBtaWdyYXRpb24uDQogCSAqLw0KIAlyZXR1cm4gZG1hX3Jlc3Zfd2FpdF90
aW1lb3V0KHVtZW1fZG1hYnVmLT5hdHRhY2gtPmRtYWJ1Zi0+cmVzdiwNCi0JCQkJICAgICBETUFf
UkVTVl9VU0FHRV9XUklURSwNCisJCQkJICAgICBETUFfUkVTVl9VU0FHRV9LRVJORUwsDQogCQkJ
CSAgICAgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCiB9DQogRVhQT1JUX1NZTUJPTChp
Yl91bWVtX2RtYWJ1Zl9tYXBfcGFnZXMpOw0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
