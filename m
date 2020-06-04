Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B47F1EDFB4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:23:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8B3260CB2
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:23:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A99DD60E25; Thu,  4 Jun 2020 08:23:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD94960BF7;
	Thu,  4 Jun 2020 08:14:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 57FBB60E25
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:14:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4477465F7F; Thu,  4 Jun 2020 08:14:28 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 10A0460E25
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:51 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t18so5046130wru.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cSDqH5ij1BPhN02yjRk7X7Ch94EKjTTeY1hANr+YPIg=;
 b=tfm5yQgXcPOcQm/McUrU/SZrHznEBMv7PGCjOle93WmA0imdc9XasRObfp6V1ptsdK
 KxwAore6NJUva1ti9xH+4rInoq+ZIHE8PzGSSJgE5pDHLOXf0MuTSV6JW59LJG7q81ZB
 PtysERW3YyLvYQnyYSzdogQZruZjQbEH2mQUe1B29+54Qmg9AAiA1Vx6+oqrNCKYRr/Y
 DdiQNTpJFeOdHswSQgQXPk8sycs/e0IRmtupTvVX+NPwZozUKt8D3mfyLxzbyEz6I4ZA
 0b81s6zN3b5o7Qi26uBzQTES04rZPyNLq1w9vQArn7NGIRqpkIRapEYy13hFJb0ooQsI
 iMPg==
X-Gm-Message-State: AOAM531MVCaSikB7PUXV20oAHCGLvkkAj4iq7+jgh2ESf5X5ViUK/SrP
 pu11DGzPvSs76CaG6AheNq7gWQ==
X-Google-Smtp-Source: ABdhPJwTJtq4ZMbXkz9yUomRGTcjfw0qYxpotGG6g0Tb3unDYU1epqhHkACAq8ejGSpX2fZsvYsoJQ==
X-Received: by 2002:a05:6000:7:: with SMTP id h7mr3471787wrx.55.1591258370059; 
 Thu, 04 Jun 2020 01:12:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:49 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:20 +0200
Message-Id: <20200604081224.863494-15-daniel.vetter@ffwll.ch>
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
Subject: [Linaro-mm-sig] [PATCH 14/18] drm/scheduler: use dma-fence
	annotations in tdr work
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

SW4gdGhlIGZhY2Ugb2YgdW5wcml2aWxlZGdlZCB1c2Vyc3BhY2UgYmVpbmcgYWJsZSB0byBzdWJt
aXQgYm9ndXMgZ3B1Cndvcmtsb2FkcyB0aGUga2VybmVsIG5lZWRzIGdwdSB0aW1lb3V0IGFuZCBy
ZXNldCAodGRyKSB0byBndWFyYW50ZWUKdGhhdCBkbWFfZmVuY2VzIGFjdHVhbGx5IGNvbXBsZXRl
LiBBbm5vdGF0ZSB0aGlzIHdvcmtlciB0byBtYWtlIHN1cmUKd2UgZG9uJ3QgaGF2ZSBhbnkgYWNj
aWRlbnRhbCBsb2NraW5nIGludmVyc2lvbnMgb3Igb3RoZXIgcHJvYmxlbXMKbHVya2luZy4KCk9y
aWdpbmFsbHkgdGhpcyB3YXMgcGFydCBvZiB0aGUgb3ZlcmFsbCBzY2hlZHVsZXIgYW5ub3RhdGlv
biBwYXRjaC4KQnV0IGFtZGdwdSBoYXMgc29tZSBnbG9yaW91cyBpbnZlcnNpb25zIGhlcmU6Cgot
IGdyYWJzIGNvbnNvbGVfbG9jawotIGRvZXMgYSBmdWxsIG1vZGVzZXQsIHdoaWNoIGdyYWJzIGFs
bCBraW5kcyBvZiBsb2NrcwogIChkcm1fbW9kZXNldF9sb2NrLCBkbWFfcmVzdl9sb2NrKSB3aGlj
aCBjYW4gZGVhZGxvY2sgd2l0aAogIGRtYV9mZW5jZV93YWl0IGhlbGQgaW5zaWRlIHRoZW0uCi0g
YWxtb3N0IG1pbm9yIGF0IHRoYXQgcG9pbnQsIGJ1dCB0aGUgbW9kZXNldCBjb2RlIGFsc28gYWxs
b2NhdGVzCiAgbWVtb3J5CgpUaGVzZSBhbGwgbG9vayBsaWtlIHRoZXknbGwgYmUgdmVyeSBoYXJk
IHRvIGZpeCBwcm9wZXJseSwgdGhlIGhhcmR3YXJlCnNlZW1zIHRvIHJlcXVpcmUgYSBmdWxsIGRp
c3BsYXkgcmVzZXQgd2l0aCBhbnkgZ3B1IHJlY292ZXJ5LgoKSGVuY2Ugc3BsaXQgb3V0IGFzIGEg
c2VwZXJhdGUgcGF0Y2guCgpTaW5jZSBhbWRncHUgaXNuJ3QgdGhlIG9ubHkgaGFyZHdhcmUgZHJp
dmVyIHRoYXQgbmVlZHMgdG8gcmVzZXQgdGhlCmRpc3BsYXkgKGF0IGxlYXN0IGdlbjIvMyBvbiBp
bnRlbCBoYXZlIHRoZSBzYW1lIHByb2JsZW0pIHdlIG5lZWQgYQpnZW5lcmljIHNvbHV0aW9uIGZv
ciB0aGlzLiBUaGVyZSdzIHR3byB0cmlja3Mgd2UgY291bGQgc3RpbGwgZnJvbQpkcm0vaTkxNSBh
bmQgbGlmdCB0byBkbWEtZmVuY2U6CgotIFRoZSBiaWcgd2hhY2ssIGFrYSBmb3JjZS1jb21wbGV0
ZSBhbGwgZmVuY2VzLiBpOTE1IGRvZXMgdGhpcyBmb3IgYWxsCiAgcGVuZGluZyBqb2JzIGlmIHRo
ZSByZXNldCBpcyBzb21laG93IHN0dWNrLiBUcm91YmxlIGlzIHdlJ2QgbmVlZCB0bwogIGRvIHRo
aXMgZm9yIGFsbCBmZW5jZXMgaW4gdGhlIGVudGlyZSBzeXN0ZW0sIGFuZCBqdXN0IHRoZQogIGJv
b2sta2VlcGluZyBmb3IgdGhhdCB3aWxsIGJlIGZ1bi4gUGx1cyBsb3RzIG9mIGRyaXZlcnMgdXNl
IGZlbmNlcwogIGZvciBhbGwga2luZHMgb2YgaW50ZXJuYWwgc3R1ZmYgbGlrZSBtZW1vcnkgbWFu
YWdlbWVudCwgc28KICB1bmNvbmRpdGlvbmFsbHkgcmVzZXR0aW5nIGFsbCBvZiB0aGVtIGRvZXNu
J3Qgd29yay4KCiAgSSdtIGFsc28gaG9waW5nIHRoYXQgd2l0aCB0aGVzZSBmZW5jZSBhbm5vdGF0
aW9ucyB3ZSBjb3VsZCBlbmxpc3QKICBsb2NrZGVwIGluIGZpbmRpbmcgdGhlIGxhc3Qgb2ZmZW5k
ZXJzIGNhdXNpbmcgZGVhZGxvY2tzLCBhbmQgd2UKICBjb3VsZCByZW1vdmUgdGhpcyBnZXQtb3V0
LW9mLWphaWwgdHJpY2suCgotIFRoZSBtb3JlIGZlYXNpYmxlIGFwcHJvYWNoIChhY3Jvc3MgZHJp
dmVycyBhdCBsZWFzdCBhcyBwYXJ0IG9mIHRoZQogIGRtYV9mZW5jZSBjb250cmFjdCkgaXMgd2hh
dCBkcm0vaTkxNSBkb2VzIGZvciBnZW4yLzM6IFdoZW4gd2UgbmVlZAogIHRvIHJlc2V0IHRoZSBk
aXNwbGF5IHdlIHdha2UgdXAgYWxsIGRtYV9mZW5jZV93YWl0X2ludGVycnVwdGlibGUKICBjYWxs
cywgb3Igd2VsbCBhdCBsZWFzdCB0aGUgZXF1aXZhbGVudCBvZiB0aG9zZSBpbiBpOTE1IGludGVy
bmFsbHkuCgogIFJlbHlpbmcgb24gaW9jdGwgcmVzdGFydCB3ZSBmb3JjZSBhbGwgb3RoZXIgdGhy
ZWFkcyB0byByZWxlYXNlIHRoZWlyCiAgbG9ja3MsIHdoaWNoIG1lYW5zIHRoZSB0ZHIgdGhyZWFk
IGlzIGd1YXJhbnRlZWQgdG8gYmUgYWJsZSB0byBnZXQKICB0aGVtLiBJIHRoaW5rIHdlIGNvdWxk
IGltcGxlbWVudCB0aGlzIGF0IHRoZSBkbWFfZmVuY2UgbGV2ZWwsCiAgaW5jbHVkaW5nIHByb3Bl
ciBsb2NrZGVwIGFubm90YXRpb25zLgoKICBkbWFfZmVuY2VfYmVnaW5fdGRyKCk6CiAgLSBtdXN0
IGJlIG5lc3RlZCB3aXRoaW4gYSBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgc2VjdGlv
bgogIC0gd2lsbCB3YWtlIHVwIGFsbCBpbnRlcnJ1cHRpYmxlIChidXQgbm90IHRoZSBub24taW50
ZXJydXB0aWJsZSkKICAgIGRtYV9mZW5jZV93YWl0KCkgY2FsbHMgYW5kIGZvcmNlIHRoZW0gdG8g
Y29tcGxldGUgd2l0aCBhCiAgICAtRVJFU1RBUlRTWVMgZXJybm8gY29kZS4gQWxsIG5ldyBpbnRl
cnJ1cGl0YmxlIGNhbGxzIHRvCiAgICBkbWFfZmVuY2Vfd2FpdCgpIHdpbGwgaW1tZWlkYXRlbHkg
ZmFpbCB3aXRoIHRoZSBzYW1lIGVycm9yIGNvZGUuCgogIGRtYV9mZW5jZV9lbmRfdHJkcigpOgog
IC0gdGhpcyB3aWxsIGNvbnZlcnQgZG1hX2ZlbmNlX3dhaXQoKSBjYWxscyBiYWNrIHRvIG5vcm1h
bC4KCiAgT2YgY291cnNlIGludGVycnVwdGluZyBkbWFfZmVuY2Vfd2FpdCBpcyBvbmx5IG9rIGlm
IHRoZSBjYWxsZXIKICBzcGVjaWZpZWQgdGhhdCwgd2hpY2ggbWVhbnMgd2UgbmVlZCB0byBzcGxp
dCB0aGUgYW5ub3RhdGlvbnMgaW50bwogIGludGVycnVwdGlibGUgYW5kIG5vbi1pbnRlcnJ1cHRp
YmxlIHZlcnNpb24uIElmIHdlIHRoZW4gbWFrZSBzdXJlCiAgdGhhdCB3ZSBvbmx5IHVzZSBpbnRl
cnJ1cHRpYmxlIGRtYV9mZW5jZV93YWl0KCkgY2FsbHMgd2hpbGUgaG9sZGluZwogIGRybV9tb2Rl
c2V0X2xvY2sgd2UgY2FuIGdyYWIgdGhlbSBpbiB0ZHIgY29kZSwgYW5kIGFsbG93IGRpc3BsYXkK
ICByZXNldHMuIERvaW5nIHRoZSBzYW1lIGZvciBkbWFfcmVzdl9sb2NrIG1pZ2h0IGJlIGEgbG90
IGhhcmRlciwgc28KICBidWZmZXIgdXBkYXRlcyBtdXN0IGJlIGF2b2lkZWQuCgogIFdoYXQncyB3
b3JzZSwgd2UncmUgbm90IGdvaW5nIHRvIGJlIGFibGUgdG8gbWFrZSB0aGUgZG1hX2ZlbmNlX3dh
aXQKICBjYWxscyBpbiBtbXUtbm90aWZpZXJzIGludGVycnVwdGlibGUsIHRoYXQgZG9lc24ndCB3
b3JrLiBTbwogIGFsbG9jYXRpbmcgbWVtb3J5IHN0aWxsIHdvbnQnIGJlIGFsbG93ZWQsIGV2ZW4g
aW4gdGRyIHNlY3Rpb25zLiBQbHVzCiAgb2J2aW91c2x5IHdlIGNhbiB1c2UgdGhpcyB0cmljayBv
bmx5IGluIHRkciwgaXQgaXMgcmF0aGVyIGludHJ1c2l2ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgt
cmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwg
NSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9tYWluLmMKaW5kZXggMDZhNzM2ZTUwNmFkLi5lMzRhNDQzNzZlODcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCkBAIC0yNzksOSArMjc5LDEyIEBA
IHN0YXRpYyB2b2lkIGRybV9zY2hlZF9qb2JfdGltZWRvdXQoc3RydWN0IHdvcmtfc3RydWN0ICp3
b3JrKQogewogCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7CiAJc3RydWN0IGRybV9z
Y2hlZF9qb2IgKmpvYjsKKwlib29sIGZlbmNlX2Nvb2tpZTsKIAogCXNjaGVkID0gY29udGFpbmVy
X29mKHdvcmssIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciwgd29ya190ZHIud29yayk7CiAKKwlm
ZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworCiAJLyogUHJvdGVj
dHMgYWdhaW5zdCBjb25jdXJyZW50IGRlbGV0aW9uIGluIGRybV9zY2hlZF9nZXRfY2xlYW51cF9q
b2IgKi8KIAlzcGluX2xvY2soJnNjaGVkLT5qb2JfbGlzdF9sb2NrKTsKIAlqb2IgPSBsaXN0X2Zp
cnN0X2VudHJ5X29yX251bGwoJnNjaGVkLT5yaW5nX21pcnJvcl9saXN0LApAQCAtMzEzLDYgKzMx
Niw4IEBAIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9qb2JfdGltZWRvdXQoc3RydWN0IHdvcmtfc3Ry
dWN0ICp3b3JrKQogCXNwaW5fbG9jaygmc2NoZWQtPmpvYl9saXN0X2xvY2spOwogCWRybV9zY2hl
ZF9zdGFydF90aW1lb3V0KHNjaGVkKTsKIAlzcGluX3VubG9jaygmc2NoZWQtPmpvYl9saXN0X2xv
Y2spOworCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiB9CiAKICAv
KioKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
