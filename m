Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B114B2669
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FF64401CC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:27 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id AA815401BD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:18 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id j14so22692582ejy.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ilcOGSqnxUqFL0ayC9N1nKoW8foqX4Z1qTckrM2yJmE=;
        b=qfe+tZtSogUA0PsviBqXTXrBsfr862yvLtbpjPr5xMmTftODtX3zYH1NoWY6C5lI10
         s+gDJXlLTQrzLYVg4B/NIb3LUNkAxzyEAJd47tUOrcLYoF/AGJSynPdDvD9ZUtQlxkH1
         Kxj/mV8xkvV/vWONhGX80mi1MFQDHxWZ1u8Iy9c5SoiLiB5brXT5/PdBgKwgqObhthgK
         JAb18ZJ8YXxXLnQT7BPpasmqFN8B7Np4rEFohcFAhAMBRVx3QG/kHiGW15OTT4g1DMft
         fv2VWQO2Vjxl8+OaJChX2yV3000v6l2auRYBkiXv8JPOFfjpLsUWEpFoJ2bYNl5jwM7e
         yHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ilcOGSqnxUqFL0ayC9N1nKoW8foqX4Z1qTckrM2yJmE=;
        b=xBzpoxlp7JsToiEe6lYDJDBkNonD+UeoMm37DTXAwUGnpWhgz4otfZfvMDJ9NWhsCm
         vTB9vPEWfP3e8kvJSaigu7K6ppF0OVGLN0dGjo0Ou+Xwc1A9UPMhCVs+ag2zH6olF6gc
         NTDtNjvvP/NXdLL5j1nTICTW7asINUZ9bC1AqkgxBUaxx3bJsdjttxmJxroSYbAIpff5
         ei78sBeJt83bqngMnZQFjlZ0Ze692YVFFaKIYqEIfT78+k+zgCjGkNnecSIvisp4dFqT
         neqoUPHsCEuio7y9r61dZ/XaI+NkaO1Bbg7aN3OTD6LnQnhQELL+OXIEp8qMTQi6Orps
         9b9A==
X-Gm-Message-State: AOAM533AEkmIkE7rBB2qnXRLbit+YbRoxC7GXd9C71RQ2OcWY6DyGI8f
	H9PBhVwSWTNcTVnUdGJr8Hc=
X-Google-Smtp-Source: ABdhPJzJmm1EQmSN6DgHEwNvQkgzNJN1E+ISc1wgjEf0JBsqERRZ2Xv8wHx0YNN+qXthy90BUmiXvA==
X-Received: by 2002:a17:907:29d7:: with SMTP id ev23mr1276590ejc.674.1644583817819;
        Fri, 11 Feb 2022 04:50:17 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:17 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:53 +0100
Message-Id: <20220211125003.918447-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PGCF3AFMY566DYOMC6GT2DRB3LVHFTWJ
X-Message-ID-Hash: PGCF3AFMY566DYOMC6GT2DRB3LVHFTWJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 13/23] drm/atomic-helper: support more than one write fence in drm_gem_plane_helper_prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PGCF3AFMY566DYOMC6GT2DRB3LVHFTWJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUNCmZlbmNlIGFzIHNpbmdsZSBmZW5jZS4NCg0KU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQotLS0NCiBkcml2ZXJzL2dw
dS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgfCAxOCArKysrKysrLS0tLS0tLS0tLS0NCiAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYw0KaW5kZXggYzMxODlhZmUxMGNiLi45MzM4
ZGRiN2VkZmYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVs
cGVyLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYw0KQEAg
LTE0MywyNSArMTQzLDIxIEBADQogICovDQogaW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBh
cmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0
YXRlKQ0KIHsNCi0Jc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOw0KIAlzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9iajsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQorCWludCByZXQ7DQog
DQogCWlmICghc3RhdGUtPmZiKQ0KIAkJcmV0dXJuIDA7DQogDQogCW9iaiA9IGRybV9nZW1fZmJf
Z2V0X29iaihzdGF0ZS0+ZmIsIDApOw0KLQlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9i
ai0+cmVzdiwgZmFsc2UpOw0KLQlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vy
c29yLCBmZW5jZSkgew0KLQkJLyogVE9ETzogQ3VycmVudGx5IHRoZXJlIHNob3VsZCBiZSBvbmx5
IG9uZSB3cml0ZSBmZW5jZSwgc28gdGhpcw0KLQkJICogaGVyZSB3b3JrcyBmaW5lLiBCdXQgZHJt
X2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKCkgc2hvdWxkDQotCQkgKiBiZSBjaGFuZ2VkIHRv
IGJlIGFibGUgdG8gaGFuZGxlIG1vcmUgZmVuY2VzIGluIGdlbmVyYWwgZm9yDQotCQkgKiBtdWx0
aXBsZSBCT3MgcGVyIGZiIGFueXdheS4gKi8NCi0JCWRtYV9mZW5jZV9nZXQoZmVuY2UpOw0KLQkJ
YnJlYWs7DQotCX0NCi0JZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7DQorCXJldCA9IGRtYV9y
ZXN2X2dldF9zaW5nbGV0b24ob2JqLT5yZXN2LCBmYWxzZSwgJmZlbmNlKTsNCisJaWYgKHJldCkN
CisJCXJldHVybiByZXQ7DQogDQorCS8qIFRPRE86IGRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9w
bGFuZSgpIHNob3VsZCBiZSBjaGFuZ2VkIHRvIGJlIGFibGUNCisJICogdG8gaGFuZGxlIG1vcmUg
ZmVuY2VzIGluIGdlbmVyYWwgZm9yIG11bHRpcGxlIEJPcyBwZXIgZmIuDQorCSAqLw0KIAlkcm1f
YXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsNCiAJcmV0dXJuIDA7DQog
fQ0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
