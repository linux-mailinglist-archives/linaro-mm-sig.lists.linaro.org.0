Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 526D64EA83D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 09:00:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56B343EC05
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 07:00:10 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id D88A33EBF1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 07:00:04 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id b24so19532660edu.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 00:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m7nYYw9QbO9lD8x13zqrVQagOe2TVYJPaNjC3VlVpmg=;
        b=oVVVbZAR3MY5o2TmQnqB7eeOwx96uFW5NEkAXRefmX4Uff6MftBOHgTmGpAVRXOS+v
         L6UP/uT7RPa1+SNNqPTfInEV8RmSDIEQC62rICCbUdny5Mr3su6Kifi/CUJoCF1NhqDU
         eckFYmhXvqknkono3r/AVr3r2IBqyGbaqJ9f7tt+dm5ydKqgxJ5C4kLg4ZVs5swTD0l+
         rc0bi77SC0G+ubbt3wbvLxOO+XzBRzgvkS/cl6nuXzfufOKcN5eUUHkktLpVclgMHwnl
         t/fnQSUxcXtmv5cjGc88ADdzOPFhqgzmZqGH3GiN5jiAfCRflOQXbuncxjCsfhusxbiO
         ZbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m7nYYw9QbO9lD8x13zqrVQagOe2TVYJPaNjC3VlVpmg=;
        b=SYDpZUmE6hr0Ef2XNUPq1L7+9dfwARDEbZJYSioteU4GzVoeRoiEf1zwVEqoppWOjs
         /7zLpz0O+MK5MUJp5Q9kD1m5tESCrCpM21UvQyl5pySa2bqPOpwxPBf0Kkh29fkLyDz4
         9LgAKJtgU80ntNZrHtKwG1PStPkfL8ZwVFyDzt7+fyGEL5VarMKd5SdBjMqIV8I/Q929
         RLEs4bsIT7HTMpPdDg+2ervm6AZK2JH+c2s1jLL1IA96G4jaRoDV+SU5RxVc+pdW6XF+
         xSxYUnnSt8HqGYemCeDwF9HptFpT6fG8T0nqvXvCbPsOaU4xf5QeUzInqBqeKLgtbGg3
         TQuw==
X-Gm-Message-State: AOAM531Y0r+Oz4/ysylumJAFrgpmOdoAY9ub1nP3P4YPZN+HM0alhTqC
	Z3BlfrAqkQoZ/advnz7xiDc=
X-Google-Smtp-Source: ABdhPJwGoMU0Av/z3ii/A11iC+7ue7IwhIP52CrYOTJ7GqwhFFeYIZfyq9d8SzNMbBtauOSBP3Ah+A==
X-Received: by 2002:a50:8707:0:b0:41a:68df:1a6e with SMTP id i7-20020a508707000000b0041a68df1a6emr2640201edb.31.1648537203881;
        Tue, 29 Mar 2022 00:00:03 -0700 (PDT)
Received: from able.fritz.box (p5b0eab60.dip0.t-ipconnect.de. [91.14.171.96])
        by smtp.gmail.com with ESMTPSA id gv9-20020a170906f10900b006d7128b2e6fsm6593250ejb.162.2022.03.29.00.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 00:00:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Tue, 29 Mar 2022 09:00:00 +0200
Message-Id: <20220329070001.134180-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: FEXSDZRH2NKJ567LKRVOF3ZNCEKQYLKR
X-Message-ID-Hash: FEXSDZRH2NKJ567LKRVOF3ZNCEKQYLKR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf/sync-file: fix logic error in new fence merge code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FEXSDZRH2NKJ567LKRVOF3ZNCEKQYLKR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiB0aGUgYXJyYXkgaXMgZW1wdHkgYmVjYXVzZSBldmVyeXRoaW5nIGlzIHNpZ25hbGVkIHdl
IGNhbid0IHVzZQ0KYWRkX2ZlbmNlKCkgdG8gYWRkIHNvbWV0aGluZyBiZWNhdXNlIHRoYXQgd291
bGQgZmlsdGVyIHRoZSBzaWduYWxlZA0KZmVuY2UgYWdhaW4uDQoNClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkZpeGVzOiA1MTlmNDkw
ZGIwN2UgKCJkbWEtYnVmL3N5bmMtZmlsZTogZml4IHdhcm5pbmcgYWJvdXQgZmVuY2UgY29udGFp
bmVycyIpDQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgfCAyICstDQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMN
CmluZGV4IGI4ZGVhNGVjMTIzYi4uNTE0ZDIxMzI2MWRmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9k
bWEtYnVmL3N5bmNfZmlsZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMNCkBA
IC0yNjIsNyArMjYyLDcgQEAgc3RhdGljIHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZV9tZXJn
ZShjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3Qgc3luY19maWxlICphLA0KIAl9DQogDQogCWlmIChp
bmRleCA9PSAwKQ0KLQkJYWRkX2ZlbmNlKGZlbmNlcywgJmluZGV4LCBkbWFfZmVuY2VfZ2V0X3N0
dWIoKSk7DQorCQlmZW5jZXNbaW5kZXgrK10gPSBkbWFfZmVuY2VfZ2V0X3N0dWIoKTsNCiANCiAJ
aWYgKG51bV9mZW5jZXMgPiBpbmRleCkgew0KIAkJc3RydWN0IGRtYV9mZW5jZSAqKnRtcDsNCi0t
IA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
