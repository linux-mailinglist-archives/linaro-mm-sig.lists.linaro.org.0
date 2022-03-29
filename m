Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB3D4EA841
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 09:00:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 648033EBF5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 07:00:15 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id DFA273EBF4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 07:00:05 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id c62so19552940edf.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 00:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dfQADiC3SkhSpWiX7t32pPZIKom+fqM6C8ez0L8fdtk=;
        b=hXRlg+OY/KFL9cqLeqJvoC2sGQvHE5xTtCNjtPDKgWLr65aOTHptN3wyod8Pz0b8Lu
         mQtXgAnyqoAhvOkUpJeneZSu561r8ex/Jhzr1128NlTiUnUXRJ96C1mmo4c7MJxKI4Vl
         2wLcdh/q80uZYq/ZdDCs3yD3Ga096jU0L0FTB3iLTEKYEcPISZASbLUHSjyjw/EOYrMn
         2uq7wg9SqtRSvB5Eiy1yumrFrCGTYV9kqxTx6bvZ1cLXYpK+2AtaplXjpUo/ahDEgO0o
         bsx7sNU/6oThzEcNxULMyK/OfftSuk6DmLHEnevG6oCTf31AdKb5TEeD53y0+m34MVZM
         Ek5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dfQADiC3SkhSpWiX7t32pPZIKom+fqM6C8ez0L8fdtk=;
        b=arjE/qYXwlBmUvnbTU7c29qwIuNHIX71Z+h9gfvMO98LkrKZIjy5TECK9gUWXvZbEr
         aGxp612oo7C3iDce35o7x0A3RD3MFwEkFadK+V55HkwEDfEO4bZJcDPzDhDiQWdDQLX2
         gq24FJhrPsufDC7xQF5p7cDdJaQ5Mf8AA8KiEA3wb0yGlRIJQd5Z8DbtyvpPVEfJQXSv
         Tm1XGO50OvYlIvIc6u4MtXY+8wKryVmmNPHjHh5wVVEYAuzf7/QzZrtZ6I29VZznPUP7
         sV2NoXdxy+uye7d332xO4dCDTTP3yBNe7PlvOeN/kKnhqZ6kNWezMvk+HPXnSWMjH7wE
         EUyg==
X-Gm-Message-State: AOAM530mcRq5AXoblHblLOUMJ5uCgGmVVui7bUozzh+AzTOHbrWQgg2o
	JnDdq4u3q8nrB9NDClTKbHI=
X-Google-Smtp-Source: ABdhPJxZys/k7C91gqwRakOcXoRfj8Dei6X9emGlvQ/rA5KyjiSrAjYJmv9BnrJjzK1G+BTm/kZSDw==
X-Received: by 2002:a50:eb8b:0:b0:419:a11c:8676 with SMTP id y11-20020a50eb8b000000b00419a11c8676mr2589983edr.267.1648537205019;
        Tue, 29 Mar 2022 00:00:05 -0700 (PDT)
Received: from able.fritz.box (p5b0eab60.dip0.t-ipconnect.de. [91.14.171.96])
        by smtp.gmail.com with ESMTPSA id gv9-20020a170906f10900b006d7128b2e6fsm6593250ejb.162.2022.03.29.00.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 00:00:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Tue, 29 Mar 2022 09:00:01 +0200
Message-Id: <20220329070001.134180-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329070001.134180-1-christian.koenig@amd.com>
References: <20220329070001.134180-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PHGFL2FEPBGOMXZA3TTNAVB6HSBNLFIU
X-Message-ID-Hash: PHGFL2FEPBGOMXZA3TTNAVB6HSBNLFIU
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: handle empty dma_fence_arrays gracefully
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PHGFL2FEPBGOMXZA3TTNAVB6HSBNLFIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBidWcgaW5zaWRlIHRoZSBuZXcgc3luYy1maWxlIG1lcmdlIGNvZGUgY3JlYXRlZCBlbXB0eSBk
bWFfZmVuY2VfYXJyYXkgaW5zdGFuY2VzLg0KDQpXYXJuIGFib3V0IHRoYXQgYW5kIGhhbmRsZSB0
aG9zZSB3aXRob3V0IGNyYXNoaW5nLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLWFycmF5LmMgfCA1ICsrKysrDQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0K
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQppbmRleCA1MmI4NWQyOTIzODMuLjVjOGE3MDg0
NTc3YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQpAQCAtMTU5LDYgKzE1OSw4IEBA
IHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9jcmVhdGUoaW50IG51bV9m
ZW5jZXMsDQogCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5Ow0KIAlzaXplX3Qgc2l6ZSA9
IHNpemVvZigqYXJyYXkpOw0KIA0KKwlXQVJOX09OKCFudW1fZmVuY2VzIHx8ICFmZW5jZXMpOw0K
Kw0KIAkvKiBBbGxvY2F0ZSB0aGUgY2FsbGJhY2sgc3RydWN0dXJlcyBiZWhpbmQgdGhlIGFycmF5
LiAqLw0KIAlzaXplICs9IG51bV9mZW5jZXMgKiBzaXplb2Yoc3RydWN0IGRtYV9mZW5jZV9hcnJh
eV9jYik7DQogCWFycmF5ID0ga3phbGxvYyhzaXplLCBHRlBfS0VSTkVMKTsNCkBAIC0yMzEsNiAr
MjMzLDkgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KHN0cnVjdCBk
bWFfZmVuY2UgKmhlYWQpDQogCWlmICghYXJyYXkpDQogCQlyZXR1cm4gaGVhZDsNCiANCisJaWYg
KCFhcnJheS0+bnVtX2ZlbmNlcykNCisJCXJldHVybiBOVUxMOw0KKw0KIAlyZXR1cm4gYXJyYXkt
PmZlbmNlc1swXTsNCiB9DQogRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYXJyYXlfZmlyc3QpOw0K
LS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
