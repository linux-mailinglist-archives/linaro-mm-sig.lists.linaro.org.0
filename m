Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B861CF138
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:12:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4FAB618EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:12:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A4DB16601E; Tue, 12 May 2020 09:12:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 485B961993;
	Tue, 12 May 2020 09:02:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 51295618EF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:02:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 393A361993; Tue, 12 May 2020 09:02:00 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 17037619AC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:13 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id y24so22394788wma.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u5gM1ohPbNVORxsODI5ngB8Z3LljD1/NzUrdRFpQw6k=;
 b=ZJByMRgqPeRFYG/RKmvi+BlCrUGfCWPmQ1Auvws52sQ6oEzlqxgV0f6fSv2816Q/cm
 TBnfL2u/p904aRKqsYjphZpeovd1lNlm3VRuJeKWteW/HoTanstnFkbbUCKape2p5031
 X/GGc7HCKnsngcYNDSlxmLHWjug72nKYck5WVI76gfA8JDXq3w50WyMEm5hhBoqkFydg
 lOJ+R1XDPq5Bq+hERGxkBtr8NIIIt1fAnDy8PBUlzUAOq97e/AnZJwEQwpxjRthxiVWl
 6Kv5xh5yFVu9fvb6qEau8cMOkWft9CSbVTiSqEdpdMJwpze0fKR/RKROtdVgQMiim4L5
 jfrg==
X-Gm-Message-State: AGi0Pub6iLMsuuBR62dRnRM2OSVpYFBAYlBQ7f8I3Z2v8W8lKkWKNMng
 45PpS5YpT8XKY0VNoZLb55udLg==
X-Google-Smtp-Source: APiQypLTNXsQ8HlHPlHfp2Mll6IbSc871xkl7AkjDoENjAiQEoiFF4u2nMFQth6vdD3XxA2bFR9BoQ==
X-Received: by 2002:a1c:9e52:: with SMTP id h79mr35953921wme.84.1589274012210; 
 Tue, 12 May 2020 02:00:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:41 +0200
Message-Id: <20200512085944.222637-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC 14/17] drm/amdgpu: use dma-fence annotations
	for gpu reset code
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VG8gaW1wcm92ZSBjb3ZlcmFnZSBhbHNvIGFubm90YXRlIHRoZSBncHUgcmVzZXQgY29kZSBpdHNl
bGYsIHNpbmNlCnRoYXQncyBjYWxsZWQgZnJvbSBvdGhlciBwbGFjZXMgdGhhbiBkcm0vc2NoZWR1
bGVyICh3aGljaCBpcyBhbHJlYWR5CmFubm90YXRlZCkuIEFubm90YXRpb25zIG5lc3RzLCBzbyB0
aGlzIGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcsIGFuZAphbGxvd3MgZWFzaWVyIHRlc3RpbmcuCgpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYyB8IDEwICsrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGV2aWNlLmMKaW5kZXggYjAzOGRkYmIyZWNlLi41NTYwZDA0NWIyZTAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKQEAgLTQxNDAsNiArNDE0MCw5
IEBAIGludCBhbWRncHVfZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LAogCWJvb2wgdXNlX2JhY28gPQogCQkoYW1kZ3B1X2FzaWNfcmVzZXRfbWV0aG9kKGFkZXYp
ID09IEFNRF9SRVNFVF9NRVRIT0RfQkFDTykgPwogCQl0cnVlIDogZmFsc2U7CisJYm9vbCBmZW5j
ZV9jb29raWU7CisKKwlmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygp
OwogCiAJLyoKIAkgKiBGbHVzaCBSQU0gdG8gZGlzayBzbyB0aGF0IGFmdGVyIHJlYm9vdApAQCAt
NDE2OCw2ICs0MTcxLDcgQEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFt
ZGdwdV9kZXZpY2UgKmFkZXYsCiAJCURSTV9JTkZPKCJCYWlsaW5nIG9uIFREUiBmb3Igc19qb2I6
JWxseCwgaGl2ZTogJWxseCBhcyBhbm90aGVyIGFscmVhZHkgaW4gcHJvZ3Jlc3MiLAogCQkJICBq
b2IgPyBqb2ItPmJhc2UuaWQgOiAtMSwgaGl2ZS0+aGl2ZV9pZCk7CiAJCW11dGV4X3VubG9jaygm
aGl2ZS0+aGl2ZV9sb2NrKTsKKwkJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tp
ZSk7CiAJCXJldHVybiAwOwogCX0KIApAQCAtNDE3OCw4ICs0MTgyLDEwIEBAIGludCBhbWRncHVf
ZGV2aWNlX2dwdV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCSAqLwogCUlO
SVRfTElTVF9IRUFEKCZkZXZpY2VfbGlzdCk7CiAJaWYgKGFkZXYtPmdtYy54Z21pLm51bV9waHlz
aWNhbF9ub2RlcyA+IDEpIHsKLQkJaWYgKCFoaXZlKQorCQlpZiAoIWhpdmUpIHsKKwkJCWRtYV9m
ZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOwogCQkJcmV0dXJuIC1FTk9ERVY7CisJ
CX0KIAkJaWYgKCFsaXN0X2lzX2ZpcnN0KCZhZGV2LT5nbWMueGdtaS5oZWFkLCAmaGl2ZS0+ZGV2
aWNlX2xpc3QpKQogCQkJbGlzdF9yb3RhdGVfdG9fZnJvbnQoJmFkZXYtPmdtYy54Z21pLmhlYWQs
ICZoaXZlLT5kZXZpY2VfbGlzdCk7CiAJCWRldmljZV9saXN0X2hhbmRsZSA9ICZoaXZlLT5kZXZp
Y2VfbGlzdDsKQEAgLTQxOTQsNiArNDIwMCw3IEBAIGludCBhbWRncHVfZGV2aWNlX2dwdV9yZWNv
dmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCQkJRFJNX0lORk8oIkJhaWxpbmcgb24g
VERSIGZvciBzX2pvYjolbGx4LCBhcyBhbm90aGVyIGFscmVhZHkgaW4gcHJvZ3Jlc3MiLAogCQkJ
CSAgam9iID8gam9iLT5iYXNlLmlkIDogLTEpOwogCQkJbXV0ZXhfdW5sb2NrKCZoaXZlLT5oaXZl
X2xvY2spOworCQkJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJCQly
ZXR1cm4gMDsKIAkJfQogCkBAIC00MzE5LDYgKzQzMjYsNyBAQCBpbnQgYW1kZ3B1X2RldmljZV9n
cHVfcmVjb3ZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAogCWlmIChyKQogCQlkZXZf
aW5mbyhhZGV2LT5kZXYsICJHUFUgcmVzZXQgZW5kIHdpdGggcmV0ID0gJWRcbiIsIHIpOworCWRt
YV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOwogCXJldHVybiByOwogfQogCi0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
