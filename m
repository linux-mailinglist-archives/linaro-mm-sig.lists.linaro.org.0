Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEC6DEA9D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Oct 2019 13:16:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9346161937
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Oct 2019 11:16:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8384F61951; Mon, 21 Oct 2019 11:16:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31E53618D9;
	Mon, 21 Oct 2019 11:15:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 80F93618D2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Oct 2019 11:15:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 75FE2618E4; Mon, 21 Oct 2019 11:15:32 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 7D3AA618D2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Oct 2019 11:15:29 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 6so1124590wmf.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Oct 2019 04:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7c5Qzq9KoeAeHZDAZpUJnWCjxxzWTWUy42GlQzoDXV0=;
 b=c0O31UejTADMP7+AOEdhjM1NgN46wgGvMWZos3GZSp80bzdibr++lVuVMs7hlk0fsu
 EC+TGLJyXxCOFnojL12KUj/h1U3G/ro1KWx5QJN5Fm8U349zJnJp9VsxAFpii+8PkZWR
 609CVhASVnBm7euL9oOP3lFkNCWTPJSVSIlXjm8S9iG2dcy3Vhm5H1zMW9j8+BQYqcTW
 apEd3PhTt6MQdJZ8GguQCnha3avKlidCiFLwDwPMZd5EjNzxPLoil7nwhwXGWduqmnTw
 AnxdvtEquUobrwZpZnCOnJS0ewtfTdve10cUTBvxgL93NfLgYbMoJSAKyN2vP8c3aYi9
 hUUg==
X-Gm-Message-State: APjAAAW5zu/SyrXsfUG/mdQxcm2+RFx1ozZe2fE0uUSL/S13oGD/inxq
 YOBxiAcGzkj099RTdK1bcDI=
X-Google-Smtp-Source: APXvYqxW81KRS6pTbAx1n00iEXUv6tQFsMzKCBICUSmt+H08oQcDhMvCeGT/1W/4ZZq6o1rbXHhWtQ==
X-Received: by 2002:a1c:e912:: with SMTP id q18mr19108187wmc.29.1571656528599; 
 Mon, 21 Oct 2019 04:15:28 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c194:dd41:4bef:70cc])
 by smtp.gmail.com with ESMTPSA id l9sm13152415wme.45.2019.10.21.04.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 04:15:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Date: Mon, 21 Oct 2019 13:15:22 +0200
Message-Id: <20191021111524.14793-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021111524.14793-1-christian.koenig@amd.com>
References: <20191021111524.14793-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/4] dma-buf: stop using the dmabuf->lock so
	much
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

VGhlIGF0dGFjaG1lbnQgbGlzdCBpcyBub3cgcHJvdGVjdGVkIGJ5IHRoZSBkbWFfcmVzdiBvYmpl
Y3QuClNvIHdlIGNhbiBkcm9wIGhvbGRpbmcgdGhpcyBsb2NrIHRvIGFsbG93IGNvbmN1cnJlbnQg
YXR0YWNoCmFuZCBkZXRhY2ggb3BlcmF0aW9ucy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jCmluZGV4IDc1M2JlODRiNWZkNi4uYzczNmU2N2FlMWExIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKQEAgLTY4NSw4ICs2ODUsNiBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwKIAlhdHRhY2gtPmRtYWJ1ZiA9IGRt
YWJ1ZjsKIAlhdHRhY2gtPmR5bmFtaWNfbWFwcGluZyA9IGR5bmFtaWNfbWFwcGluZzsKIAotCW11
dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7Ci0KIAlpZiAoZG1hYnVmLT5vcHMtPmF0dGFjaCkgewog
CQlyZXQgPSBkbWFidWYtPm9wcy0+YXR0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKIAkJaWYgKHJldCkK
QEAgLTY5Niw4ICs2OTQsNiBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwKIAlsaXN0X2FkZCgmYXR0YWNoLT5ub2RlLCAm
ZG1hYnVmLT5hdHRhY2htZW50cyk7CiAJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7CiAK
LQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7Ci0KIAkvKiBXaGVuIGVpdGhlciB0aGUgaW1w
b3J0ZXIgb3IgdGhlIGV4cG9ydGVyIGNhbid0IGhhbmRsZSBkeW5hbWljCiAJICogbWFwcGluZ3Mg
d2UgY2FjaGUgdGhlIG1hcHBpbmcgaGVyZSB0byBhdm9pZCBpc3N1ZXMgd2l0aCB0aGUKIAkgKiBy
ZXNlcnZhdGlvbiBvYmplY3QgbG9jay4KQEAgLTcyNiw3ICs3MjIsNiBAQCBkbWFfYnVmX2R5bmFt
aWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwKIAog
ZXJyX2F0dGFjaDoKIAlrZnJlZShhdHRhY2gpOwotCW11dGV4X3VubG9jaygmZG1hYnVmLT5sb2Nr
KTsKIAlyZXR1cm4gRVJSX1BUUihyZXQpOwogCiBlcnJfdW5sb2NrOgpAQCAtNzc2LDE0ICs3NzEs
MTIgQEAgdm9pZCBkbWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCiAJCQlkbWFfcmVzdl91bmxvY2soYXR0YWNoLT5k
bWFidWYtPnJlc3YpOwogCX0KIAotCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7CiAJZG1hX3Jl
c3ZfbG9jayhkbWFidWYtPnJlc3YsIE5VTEwpOwogCWxpc3RfZGVsKCZhdHRhY2gtPm5vZGUpOwog
CWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOwogCWlmIChkbWFidWYtPm9wcy0+ZGV0YWNo
KQogCQlkbWFidWYtPm9wcy0+ZGV0YWNoKGRtYWJ1ZiwgYXR0YWNoKTsKIAotCW11dGV4X3VubG9j
aygmZG1hYnVmLT5sb2NrKTsKIAlrZnJlZShhdHRhY2gpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwo
ZG1hX2J1Zl9kZXRhY2gpOwpAQCAtMTI0NywxNCArMTI0MCw2IEBAIHN0YXRpYyBpbnQgZG1hX2J1
Zl9kZWJ1Z19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQogCQkgICAic2l6
ZSIsICJmbGFncyIsICJtb2RlIiwgImNvdW50IiwgImlubyIpOwogCiAJbGlzdF9mb3JfZWFjaF9l
bnRyeShidWZfb2JqLCAmZGJfbGlzdC5oZWFkLCBsaXN0X25vZGUpIHsKLQkJcmV0ID0gbXV0ZXhf
bG9ja19pbnRlcnJ1cHRpYmxlKCZidWZfb2JqLT5sb2NrKTsKLQotCQlpZiAocmV0KSB7Ci0JCQlz
ZXFfcHV0cyhzLAotCQkJCSAiXHRFUlJPUiBsb2NraW5nIGJ1ZmZlciBvYmplY3Q6IHNraXBwaW5n
XG4iKTsKLQkJCWNvbnRpbnVlOwotCQl9Ci0KIAkJc2VxX3ByaW50ZihzLCAiJTA4enVcdCUwOHhc
dCUwOHhcdCUwOGxkXHQlc1x0JTA4bHVcdCVzXG4iLAogCQkJCWJ1Zl9vYmotPnNpemUsCiAJCQkJ
YnVmX29iai0+ZmlsZS0+Zl9mbGFncywgYnVmX29iai0+ZmlsZS0+Zl9tb2RlLApAQCAtMTMwNyw3
ICsxMjkyLDYgQEAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxl
ICpzLCB2b2lkICp1bnVzZWQpCiAKIAkJY291bnQrKzsKIAkJc2l6ZSArPSBidWZfb2JqLT5zaXpl
OwotCQltdXRleF91bmxvY2soJmJ1Zl9vYmotPmxvY2spOwogCX0KIAogCXNlcV9wcmludGYocywg
IlxuVG90YWwgJWQgb2JqZWN0cywgJXp1IGJ5dGVzXG4iLCBjb3VudCwgc2l6ZSk7Ci0tIAoyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
