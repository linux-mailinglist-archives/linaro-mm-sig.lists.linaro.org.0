Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC70E1CF0F1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:04:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE8C9618C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:04:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B37DE619EA; Tue, 12 May 2020 09:04:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F0D2619F1;
	Tue, 12 May 2020 09:00:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 28D2D61892
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0A3DA61957; Tue, 12 May 2020 09:00:08 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id CE52C61892
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:02 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s8so14345857wrt.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k3OodW5bIt6jtahEoyPvdqvd8L7bfSaZtDSgdgQ0KSE=;
 b=HCzQ/RjkDF4xQ/1NiRs1HIhMMalqt1ZES1yqr/TvtO1gF+oymYQGe2DUJQJIg+4Oo0
 SRqQDTRf4SQCJwb1Jp113nZiqIJ1j3ZNJqRtBf44S4kB9HWVnyAjyhlHxqyo2R3mo4qC
 hywpYEHBMS67mKxOjsxwJ1v/zCwJDT6LjuXDevJDwT9boAfQRND6OWAzqb67i6mZZ10p
 Fq39o0MhUrAZGCjDCRizdtGMD5loxSOogaoADyFF/eCY+ib+ejJEKqvle/9QXVB7M43r
 tEGTgiotpWRBSEeq608oi0aWUouDNiehcsO88k5lXAkcCfC4EMiGPDk33BHNrFck53GU
 ocqA==
X-Gm-Message-State: AGi0Pub9fXMG/o0xYGDfMyuIYTIf4dwkFq0GgHJsXx58VqQEDJ99FGE6
 mbq/LgamwKOB3hi5wl8jh4gNoA==
X-Google-Smtp-Source: APiQypLIE0/1kWTahFNGDnQcsBGsaNy02ojJZXXlJ0KfLdzMgemSxmLWkBaf5jP2NOQfTl/RTuSVRw==
X-Received: by 2002:adf:ca0e:: with SMTP id o14mr25265512wrh.254.1589274001957; 
 Tue, 12 May 2020 02:00:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:32 +0200
Message-Id: <20200512085944.222637-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC 05/17] drm/vblank: Annotate with dma-fence
	signalling section
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

VGhpcyBpcyByYXRoZXIgb3ZlcmtpbGwgc2luY2UgY3VycmVudGx5IGFsbCBkcml2ZXJzIGNhbGwg
dGhpcyBmcm9tCmhhcmRpcnEgKG9yIGF0IGxlYXN0IHRpbWVycykuIEJ1dCBtYXliZSBpbiB0aGUg
ZnV0dXJlIHdlJ3JlIGdvaW5nIHRvCmhhdmUgdGhyZWFkIGlycSBoYW5kbGVycyBhbmQgd2hhdCBu
b3QsIGRvZXNuJ3QgaHVydCB0byBiZSBwcmVwYXJlZC4KUGx1cyB0aGlzIGlzIGFuIGVhc3kgc3Rh
cnQgZm9yIHNwcmlua2xpbmcgdGhlc2UgZmVuY2UgYW5ub3RhdGlvbnMgaW50bwpzaGFyZWQgY29k
ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fdmJsYW5rLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV92Ymxhbmsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKaW5kZXggNzU4YmY3NGUxY2FiLi4xMjVl
ZjBjMGY5YTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwpAQCAtMjQsNiArMjQsNyBAQAogICogT1RIRVIg
REVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgogICovCiAKKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVu
Y2UuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVw
YXJhbS5oPgogCkBAIC0xODk1LDcgKzE4OTYsNyBAQCBib29sIGRybV9oYW5kbGVfdmJsYW5rKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQogewogCXN0cnVjdCBkcm1f
dmJsYW5rX2NydGMgKnZibGFuayA9ICZkZXYtPnZibGFua1twaXBlXTsKIAl1bnNpZ25lZCBsb25n
IGlycWZsYWdzOwotCWJvb2wgZGlzYWJsZV9pcnE7CisJYm9vbCBkaXNhYmxlX2lycSwgZmVuY2Vf
Y29va2llOwogCiAJaWYgKFdBUk5fT05fT05DRSghZGV2LT5udW1fY3J0Y3MpKQogCQlyZXR1cm4g
ZmFsc2U7CkBAIC0xOTAzLDYgKzE5MDQsOCBAQCBib29sIGRybV9oYW5kbGVfdmJsYW5rKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQogCWlmIChXQVJOX09OKHBpcGUg
Pj0gZGV2LT5udW1fY3J0Y3MpKQogCQlyZXR1cm4gZmFsc2U7CiAKKwlmZW5jZV9jb29raWUgPSBk
bWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworCiAJc3Bpbl9sb2NrX2lycXNhdmUoJmRldi0+
ZXZlbnRfbG9jaywgaXJxZmxhZ3MpOwogCiAJLyogTmVlZCB0aW1lc3RhbXAgbG9jayB0byBwcmV2
ZW50IGNvbmN1cnJlbnQgZXhlY3V0aW9uIHdpdGgKQEAgLTE5MTUsNiArMTkxOCw3IEBAIGJvb2wg
ZHJtX2hhbmRsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBp
cGUpCiAJaWYgKCF2YmxhbmstPmVuYWJsZWQpIHsKIAkJc3Bpbl91bmxvY2soJmRldi0+dmJsYW5r
X3RpbWVfbG9jayk7CiAJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldi0+ZXZlbnRfbG9jaywg
aXJxZmxhZ3MpOworCQlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKIAkJ
cmV0dXJuIGZhbHNlOwogCX0KIApAQCAtMTk0MCw2ICsxOTQ0LDggQEAgYm9vbCBkcm1faGFuZGxl
X3ZibGFuayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlwZSkKIAlpZiAo
ZGlzYWJsZV9pcnEpCiAJCXZibGFua19kaXNhYmxlX2ZuKCZ2YmxhbmstPmRpc2FibGVfdGltZXIp
OwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CisKIAlyZXR1cm4g
dHJ1ZTsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2hhbmRsZV92YmxhbmspOwotLSAKMi4yNi4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
