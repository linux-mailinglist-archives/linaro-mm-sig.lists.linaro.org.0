Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAA01EDFB0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:22:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DFE06176E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:22:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 21423616E2; Thu,  4 Jun 2020 08:22:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5442765F7E;
	Thu,  4 Jun 2020 08:13:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 418F361726
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:13:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3437A61A21; Thu,  4 Jun 2020 08:13:33 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id B560361726
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:49 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y17so5014806wrn.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zHLq9yPZgKKERQ/k46N5wAtq1tEa3e90dS7EqKAAVV8=;
 b=EknLE7v9LR1A4RVFKSKrHDoaXVoUIv34hW0p0gj/4KRLszDE+FlTjSD0dtq+nuZzjC
 oJzOAHgfp+0Q7KEy8D21XgziGcXT6M8DP+3CUIjmMx+79soDNRZHhpiQkw5jRVhY5FPa
 VIrPNHbsUTNDOsarkOZQdyS8zmkAJG/sXv8qb8npc7ISqXMEcw1VdsmqTek4nHZLmxM5
 Kez5r/nooVukRpVZOtohWS+YpXlUw4EBgzf7foVpx7LBZG8IoICPWD1RKIFCfOOFKgKs
 wscgBWfT+TUfmXCqABPC4R3iLWTQTYX1wMacmTcMWF9IbDOFoaNCvMp9eEdjRsJ6AH7R
 PtJQ==
X-Gm-Message-State: AOAM532I/nnHvcwBnPDIPC9jFgNl9WU4OSoLuXRtcjUbd/ACh4ygmkgI
 kb8vI8bEG0C2+IaA0XeoxPCt5Q==
X-Google-Smtp-Source: ABdhPJwmXgxb0rRlbz9RyKT6KVGNFYaugD+jseyFJKYlXk9wNmaSF3eMQq44tjneQVcPWbVrYiOUJw==
X-Received: by 2002:adf:fb0f:: with SMTP id c15mr3424740wrr.410.1591258368775; 
 Thu, 04 Jun 2020 01:12:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:19 +0200
Message-Id: <20200604081224.863494-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 13/18] drm/amdgpu/dc: Stop dma_resv_lock
	inversion in commit_tail
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

VHJ5aW5nIHRvIGdyYWIgZG1hX3Jlc3ZfbG9jayB3aGlsZSBpbiBjb21taXRfdGFpbCBiZWZvcmUg
d2UndmUgZG9uZQphbGwgdGhlIGNvZGUgdGhhdCBsZWFkcyB0byB0aGUgZXZlbnR1YWwgc2lnbmFs
bGluZyBvZiB0aGUgdmJsYW5rIGV2ZW50Cih3aGljaCBjYW4gYmUgYSBkbWFfZmVuY2UpIGlzIGRl
YWRsb2NrLXkuIERvbid0IGRvIHRoYXQuCgpIZXJlIHRoZSBzb2x1dGlvbiBpcyBlYXN5IGJlY2F1
c2UganVzdCBncmFiYmluZyBsb2NrcyB0byByZWFkCnNvbWV0aGluZyByYWNlcyBhbnl3YXkuIFdl
IGRvbid0IG5lZWQgdG8gYm90aGVyLCBSRUFEX09OQ0UgaXMKZXF1aXZhbGVudC4gQW5kIGF2b2lk
cyB0aGUgbG9ja2luZyBpc3N1ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5l
bC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAxMCAr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IGM1NzVl
NzM5NGQwMy4uMDRjMTE0NDNiOWNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKQEAgLTY5MTAsNyArNjkxMCwxMSBAQCBzdGF0aWMg
dm9pZCBhbWRncHVfZG1fY29tbWl0X3BsYW5lcyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3Rh
dGUsCiAJCSAqIGV4cGxpY2l0bHkgb24gZmVuY2VzIGluc3RlYWQKIAkJICogYW5kIGluIGdlbmVy
YWwgc2hvdWxkIGJlIGNhbGxlZCBmb3IKIAkJICogYmxvY2tpbmcgY29tbWl0IHRvIGFzIHBlciBm
cmFtZXdvcmsgaGVscGVycworCQkgKgorCQkgKiBZZXMsIHRoaXMgZGVhZGxvY2tzLCBzaW5jZSB5
b3UncmUgY2FsbGluZyBkbWFfcmVzdl9sb2NrIGluIGEKKwkJICogcGF0aCB0aGF0IGxlYWRzIHRv
IGEgZG1hX2ZlbmNlX3NpZ25hbCgpLiBEb24ndCBkbyB0aGF0LgogCQkgKi8KKyNpZiAwCiAJCXIg
PSBhbWRncHVfYm9fcmVzZXJ2ZShhYm8sIHRydWUpOwogCQlpZiAodW5saWtlbHkociAhPSAwKSkK
IAkJCURSTV9FUlJPUigiZmFpbGVkIHRvIHJlc2VydmUgYnVmZmVyIGJlZm9yZSBmbGlwXG4iKTsK
QEAgLTY5MjAsNiArNjkyNCwxMiBAQCBzdGF0aWMgdm9pZCBhbWRncHVfZG1fY29tbWl0X3BsYW5l
cyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCXRtel9zdXJmYWNlID0gYW1kZ3B1
X2JvX2VuY3J5cHRlZChhYm8pOwogCiAJCWFtZGdwdV9ib191bnJlc2VydmUoYWJvKTsKKyNlbmRp
ZgorCQkvKgorCQkgKiB0aGlzIHJhY2VzIGFueXdheSwgc28gUkVBRF9PTkNFIGlzbid0IGFueSBi
ZXR0ZXIgb3Igd29yc2UKKwkJICogdGhhbiB0aGUgc3R1ZmYgYWJvdmUuIEV4Y2VwdCB0aGUgc3R1
ZmYgYWJvdmUgY2FuIGRlYWRsb2NrLgorCQkgKi8KKwkJdGlsaW5nX2ZsYWdzID0gUkVBRF9PTkNF
KGFiby0+dGlsaW5nX2ZsYWdzKTsKIAogCQlmaWxsX2RjX3BsYW5lX2luZm9fYW5kX2FkZHIoCiAJ
CQlkbS0+YWRldiwgbmV3X3BsYW5lX3N0YXRlLCB0aWxpbmdfZmxhZ3MsCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
