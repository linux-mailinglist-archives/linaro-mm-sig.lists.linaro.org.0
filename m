Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D8E10028E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2019 11:36:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 772E66177D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2019 10:36:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6BC9F61791; Mon, 18 Nov 2019 10:36:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 101156105C;
	Mon, 18 Nov 2019 10:35:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 437E7608DE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 10:35:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2E93F6105C; Mon, 18 Nov 2019 10:35:50 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 0F74F608DE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 10:35:49 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b3so18782782wrs.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 02:35:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zrkZzi6xJZH0ir+v9sQYIFLS7Cjay4SqxxYFpecXTc4=;
 b=MQnvD71qmg9tq9Va5AP2BEmOkhLBMSmn9+qNxYX15z9MwAJx3jBYSiurNj+Ooi5V2x
 BoQ86K8haL8QRTixcBCPvWQW/9c6lyn8Fsuvwk8tNaX7rLqq273QiPELAb4N9CjJ+79c
 sftllPuHx4BbFSRZCXqEmZBHG1R5uf6IH7CKyoBFucsLtrnOvvj5NiDHwfoJIHwfT6RU
 AH1ZJ846oxb/Atow3nJEGrxkLekkl/+dVJzAqxy8YILFFx2Qw3BEO35KUcuT+7BtPRUw
 0rN12o8C3kISvatMDm35h+ehMOO4T0XyzG8EZiPnT24FZDIvc9dNbLdn2xP6Akt4gTlk
 ZY3A==
X-Gm-Message-State: APjAAAUKUgNaB70wzCepFMCktziIgl/fBD5/O6CgIcqDj/9SWxMSWwPD
 8S4Z7zDEnw15i8Y10OgyPp0bvw==
X-Google-Smtp-Source: APXvYqzI/YjzhTbWzi6ciucIdm8C7vWezG/8QWxens/pBTDSA4sreEr++yzgVhnRd33mMZNdnAbvBA==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr11212226wrs.112.1574073348186; 
 Mon, 18 Nov 2019 02:35:48 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:47 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:25 +0100
Message-Id: <20191118103536.17675-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>
Subject: [Linaro-mm-sig] [PATCH 04/15] staging/android/ion: delete
	dma_buf->kmap/unmap implemenation
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

VGhlcmUncyBubyBjYWxsZXJzIGluLXRyZWUgYW55bW9yZS4KCkZvciBtZXJnaW5nIHByb2JhYmx5
IGJlc3QgdG8gc3R1ZmYgdGhpcyBpbnRvIGRybS1taXNjLCBzaW5jZSB0aGF0J3MKd2hlcmUgdGhl
IGRtYS1idWYgaGVhcHMgd2lsbCBsYW5kIHRvby4gQW5kIHRoZSByZXN1bHRpbmcgY29uZmxpY3QK
aG9wZWZ1bGx5IGVuc3VyZXMgdGhhdCBkbWEtYnVmIGhlYXBzIHdvbnQgaGF2ZSBhIG5ldyAtPmtt
YXAvdW5tYXAKaW1wbGVtZW5hdGlvbi4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogTGF1cmEgQWJib3R0IDxsYWJib3R0QHJlZGhhdC5j
b20+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogZGV2ZWxA
ZHJpdmVyZGV2Lm9zdW9zbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwot
LS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDE0IC0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lv
bi5jCmluZGV4IGU2YjFjYTE0MWI5My4uYmI0ZWRlZGMxMTUwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQv
aW9uL2lvbi5jCkBAIC0yNzQsMTggKzI3NCw2IEBAIHN0YXRpYyB2b2lkIGlvbl9kbWFfYnVmX3Jl
bGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikKIAlfaW9uX2J1ZmZlcl9kZXN0cm95KGJ1ZmZl
cik7CiB9CiAKLXN0YXRpYyB2b2lkICppb25fZG1hX2J1Zl9rbWFwKHN0cnVjdCBkbWFfYnVmICpk
bWFidWYsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0KQotewotCXN0cnVjdCBpb25fYnVmZmVyICpidWZm
ZXIgPSBkbWFidWYtPnByaXY7Ci0KLQlyZXR1cm4gYnVmZmVyLT52YWRkciArIG9mZnNldCAqIFBB
R0VfU0laRTsKLX0KLQotc3RhdGljIHZvaWQgaW9uX2RtYV9idWZfa3VubWFwKHN0cnVjdCBkbWFf
YnVmICpkbWFidWYsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0LAotCQkJICAgICAgIHZvaWQgKnB0cikK
LXsKLX0KLQogc3RhdGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsCiAJCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikK
IHsKQEAgLTM0OSw4ICszMzcsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGRt
YV9idWZfb3BzID0gewogCS5kZXRhY2ggPSBpb25fZG1hX2J1Zl9kZXRhdGNoLAogCS5iZWdpbl9j
cHVfYWNjZXNzID0gaW9uX2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcywKIAkuZW5kX2NwdV9hY2Nl
c3MgPSBpb25fZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcywKLQkubWFwID0gaW9uX2RtYV9idWZfa21h
cCwKLQkudW5tYXAgPSBpb25fZG1hX2J1Zl9rdW5tYXAsCiB9OwogCiBzdGF0aWMgaW50IGlvbl9h
bGxvYyhzaXplX3QgbGVuLCB1bnNpZ25lZCBpbnQgaGVhcF9pZF9tYXNrLCB1bnNpZ25lZCBpbnQg
ZmxhZ3MpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
