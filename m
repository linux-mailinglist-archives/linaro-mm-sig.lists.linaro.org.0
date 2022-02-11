Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 553414B265A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 864233EEA6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:00 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id ADF443EEB1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:14 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id fy20so22562004ejc.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=eZArxmFAnB1PGWm4AcT/QCKlSkXWEYFq45qSSQ8R3LA=;
        b=Bk3lLbbDEJgnYNzasK6l8Qryg47XulEhQdznSaqsTOJfkmWOyi4N7s/IdrVcc+6VZ2
         7RI6Si4YV085o8RaYLLNKF/868pPCwij9/DGyeKm/F8agQt+hw7XrHep2wd7DxdMTQCS
         2fhs7l70ZRMTu8Rg/eWSEYfXb46tXBbYnH+Stpoy5sAUsTA8BY88ibOx2H6dxzwt/3En
         2PS87H+Se40WpbkWhMkno4FajDvqEFrdbij+h0qlyFcYtHBFn4pHVIr3He0zLUown0y6
         r/92krR9kxaIWmWpwkOBfVzMWumUYaW71xwiTUPmbVv8bUu2wVJlDJS+zUKdRdmeIk2P
         gtmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eZArxmFAnB1PGWm4AcT/QCKlSkXWEYFq45qSSQ8R3LA=;
        b=WU2eXsYIHnTU0m0IXdFA4/r43q4qJPtx5wGZRoUG8TsIWdDscomHLzh9sAfURAxEXe
         vau6Ufv3dZEVi71x3FiLBoh1dYhXeiOlinmyQoCyyE+yNGoUYHpGTa1inds+8zu/lN+w
         s47q1wMLuDiydQhWdCkAROPpy2ngaj0YCqF2tXYI+2OXP0uY4ABrkhlYQyp+LheqUf+m
         x3Z/mTI4i3V9wayu+4OEjbknn8alLjPGysr+aJMDvRrET6mSXjRXydzUqh17ZKl2vkEN
         K1iFfW5b96e4JwIGm533sGWTk9015A1NNqsE9XlIkMAacEu3SjlsGbvv7nGFQb+kcLM0
         fbcA==
X-Gm-Message-State: AOAM531EVw0a67jFr4rwHSgMKdVayD6xVstCGodpiN9VEYM5gP25pzKl
	BQ5k00oxZXGQlWH2mKPMIeM=
X-Google-Smtp-Source: ABdhPJz5L2JJkfnWjSaXXOzAvlIAreH8lM8z/Tpfy4h4QzTrYOb0wO3tPG0pH+yVN3fA4sC0z3QezQ==
X-Received: by 2002:a17:906:2ed0:: with SMTP id s16mr1240418eji.327.1644583813803;
        Fri, 11 Feb 2022 04:50:13 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:48 +0100
Message-Id: <20220211125003.918447-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PDJYNMADL4JAIARQR2YQZ2TQWDVJDDAG
X-Message-ID-Hash: PDJYNMADL4JAIARQR2YQZ2TQWDVJDDAG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/23] drm/radeon: stop using dma_resv_excl_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PDJYNMADL4JAIARQR2YQZ2TQWDVJDDAG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCB1c2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGZ1bmN0aW9uLg0KDQpT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNj
OiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fZGlzcGxheS5jIHwgNyArKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
ZGlzcGxheS5jDQppbmRleCBiOWEwNzY3N2E3MWUuLmY2MGU4MjZjZDI5MiAxMDA2NDQNCi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYw0KKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5jDQpAQCAtNTMzLDcgKzUzMywxMiBAQCBzdGF0
aWMgaW50IHJhZGVvbl9jcnRjX3BhZ2VfZmxpcF90YXJnZXQoc3RydWN0IGRybV9jcnRjICpjcnRj
LA0KIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gcGluIG5ldyByYm8gYnVmZmVyIGJlZm9yZSBmbGlw
XG4iKTsNCiAJCWdvdG8gY2xlYW51cDsNCiAJfQ0KLQl3b3JrLT5mZW5jZSA9IGRtYV9mZW5jZV9n
ZXQoZG1hX3Jlc3ZfZXhjbF9mZW5jZShuZXdfcmJvLT50Ym8uYmFzZS5yZXN2KSk7DQorCXIgPSBk
bWFfcmVzdl9nZXRfc2luZ2xldG9uKG5ld19yYm8tPnRiby5iYXNlLnJlc3YsIGZhbHNlLCAmd29y
ay0+ZmVuY2UpOw0KKwlpZiAocikgew0KKwkJcmFkZW9uX2JvX3VucmVzZXJ2ZShuZXdfcmJvKTsN
CisJCURSTV9FUlJPUigiZmFpbGVkIHRvIGdldCBuZXcgcmJvIGJ1ZmZlciBmZW5jZXNcbiIpOw0K
KwkJZ290byBjbGVhbnVwOw0KKwl9DQogCXJhZGVvbl9ib19nZXRfdGlsaW5nX2ZsYWdzKG5ld19y
Ym8sICZ0aWxpbmdfZmxhZ3MsIE5VTEwpOw0KIAlyYWRlb25fYm9fdW5yZXNlcnZlKG5ld19yYm8p
Ow0KIA0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
