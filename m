Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 520D61CF13D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:13:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1AD461997
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:13:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D119E619D0; Tue, 12 May 2020 09:13:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9F4A61885;
	Tue, 12 May 2020 09:02:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 59F5B619AC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:02:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4BB5961885; Tue, 12 May 2020 09:02:00 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 8447A61885
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:10 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id l18so14330102wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U6eMxQ6gGsP+PGOv8CvoIWRRS5TJUyI8UxMjiqc47Mo=;
 b=W2B2w7qgp14hGG5ZG6VDeyH1xzzpRVnTLTvmoWot7b48k7OTXPmffEplSk+WLWrm7G
 bgZeHds2I1yTicUrSoyEbnLgjqzg4FABOOJJpbT/w05ALjMpkW2RJZlL57SBd4LEuCvE
 Q8e5VlWB/xR+xoS87BbxJlTKgJ0pyDCWnDheiOV/1P4e9pqfVqbUXhy0FWaCJNV0tYJk
 miu5/X+mwy/W4LQUDFLRFtI5rPtJRqbtzvPNvjgMmS8GmBQqW4yr3FYgfcBos6LRuH57
 Ag4kaGIr2sSHvR1VF3inoG1GdaKFk49OglWhTEvbYSlatRQMIvNkjnlNB/MFQEYZNPFF
 qeBg==
X-Gm-Message-State: AGi0PubUh0qtqQkp4I9rr54QQTYO6Q6wY/obybKt7FtalMckHTkMTZ3d
 uTy6xeaFTw+utjXfS5PHFNapQQ==
X-Google-Smtp-Source: APiQypLQNaARhwh4BlYnWAU5WfsoUDeU0pdENYNXKn3KrAt4Qe7dKmRwhwnGgQvcs+0sUHauBpwL7w==
X-Received: by 2002:adf:e751:: with SMTP id c17mr25218165wrn.351.1589274009683; 
 Tue, 12 May 2020 02:00:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:39 +0200
Message-Id: <20200512085944.222637-13-daniel.vetter@ffwll.ch>
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
Subject: [Linaro-mm-sig] [RFC 12/17] drm/amdgpu/dc: Stop dma_resv_lock
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
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IDliZmFh
NGNhZDQ4My4uMjhlMWFmOWY4MjNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKQEAgLTY2OTksNyArNjY5OSwxMSBAQCBzdGF0aWMg
dm9pZCBhbWRncHVfZG1fY29tbWl0X3BsYW5lcyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3Rh
dGUsCiAJCSAqIGV4cGxpY2l0bHkgb24gZmVuY2VzIGluc3RlYWQKIAkJICogYW5kIGluIGdlbmVy
YWwgc2hvdWxkIGJlIGNhbGxlZCBmb3IKIAkJICogYmxvY2tpbmcgY29tbWl0IHRvIGFzIHBlciBm
cmFtZXdvcmsgaGVscGVycworCQkgKgorCQkgKiBZZXMsIHRoaXMgZGVhZGxvY2tzLCBzaW5jZSB5
b3UncmUgY2FsbGluZyBkbWFfcmVzdl9sb2NrIGluIGEKKwkJICogcGF0aCB0aGF0IGxlYWRzIHRv
IGEgZG1hX2ZlbmNlX3NpZ25hbCgpLiBEb24ndCBkbyB0aGF0LgogCQkgKi8KKyNpZiAwCiAJCXIg
PSBhbWRncHVfYm9fcmVzZXJ2ZShhYm8sIHRydWUpOwogCQlpZiAodW5saWtlbHkociAhPSAwKSkK
IAkJCURSTV9FUlJPUigiZmFpbGVkIHRvIHJlc2VydmUgYnVmZmVyIGJlZm9yZSBmbGlwXG4iKTsK
QEAgLTY3MDksNiArNjcxMywxMiBAQCBzdGF0aWMgdm9pZCBhbWRncHVfZG1fY29tbWl0X3BsYW5l
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
