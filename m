Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E98C02CAA26
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 18:53:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2042C6659B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 17:53:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1158B6661F; Tue,  1 Dec 2020 17:53:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 225746654F;
	Tue,  1 Dec 2020 17:52:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5815660BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 17:51:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4772E65F8D; Tue,  1 Dec 2020 17:51:54 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by lists.linaro.org (Postfix) with ESMTPS id E70CC60BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 17:51:52 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id b12so1718200pjl.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 09:51:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=AB/6a+0q1qLMuNjG8yRoZzr5m++qXs4+JpGB+h7ZvYE=;
 b=mxnFoCtL48O42s+zLksWQBdD0i4T+fDiEwAVAdhsdrsVpGAdox2uEFY7Up2oZ2nIpH
 YLcDPU+EGkKQqejMQacDOXG65J+hE13ACt3P7BSVRXHVpo6O/4MrU5lo9BN0FLszQbXB
 oFDcEVY3eQx7FcjOGABVOoeX0aOSjpl1CpGT04qvCYliMkccoYtwTOyVwavczF+fj/To
 hAGd2sgxwhKjqrz06x05GMxZmErQL3UrZtn46iqBp4/e45hu8vDyYgyX5pXolgaRJw3N
 nlUMonHrWHnBX+/mlIa7HGb8yMDWLVxOdfutlnn95K7qAmmq0x1ja/Vg026Cf7w9SjfW
 gR6Q==
X-Gm-Message-State: AOAM533lsAwMyahXlIjUtIWJeFeSy5KpDt4XU8xtGXNOyT5hhE8dtdR9
 LYaHi7g80YJFG19WkOlNoGo=
X-Google-Smtp-Source: ABdhPJwfTISVlwcaeK8OrIVwQd2JJl5304YRCgPrnXjrKTiC7PJ93jeid5YnVZR3iY0PKrrG1rz9Sg==
X-Received: by 2002:a17:902:8605:b029:da:14f6:a4ad with SMTP id
 f5-20020a1709028605b02900da14f6a4admr3760458plo.79.1606845112164; 
 Tue, 01 Dec 2020 09:51:52 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id q23sm390082pfg.192.2020.12.01.09.51.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 09:51:50 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue,  1 Dec 2020 09:51:41 -0800
Message-Id: <20201201175144.3996569-2-minchan@kernel.org>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
In-Reply-To: <20201201175144.3996569-1-minchan@kernel.org>
References: <20201201175144.3996569-1-minchan@kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 Brian.Starkey@arm.com, linaro-mm-sig@lists.linaro.org,
 linux-mm <linux-mm@kvack.org>, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 iamjoonsoo.kim@lge.com, pullip.cho@samsung.com, surenb@google.com,
 vbabka@suse.cz, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v2 1/4] mm: introduce alloc_contig_mode
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

VGhlcmUgYXJlIGRlbWFuZHMgdG8gY29udHJvbCBob3cgaGFyZCBhbGxvY19jb250aWdfcmFuZ2Ug
dHJ5IHRvCmluY3JlYXNlIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpby4gVGhpcyBwYXRjaCBhYnN0
cmFjdCBpdCBieQphZGRpbmcgbmV3IGVudW0gbW9kZSBwYXJhbWV0ZXIgaW4gYWxsb2NfY29udGln
X3JhbmdlLgpOZXcgQVBJIGluIG5leHQgcGF0Y2ggd2lsbCBhZGQgdXAgbmV3IG1vZGUgdGhlcmUg
dG8gY29udHJvbCBpdC4KClRoaXMgcGF0Y2ggc2hvdWxkbid0IGNoYW5nZSBhbnkgZXhpc3Rpbmcg
YmVoYXZpb3IuCgpTdWdnZXN0ZWQtYnk6IERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgotLS0K
IGRyaXZlcnMvdmlydGlvL3ZpcnRpb19tZW0uYyB8IDIgKy0KIGluY2x1ZGUvbGludXgvZ2ZwLmgg
ICAgICAgICB8IDggKysrKysrKy0KIG1tL2NtYS5jICAgICAgICAgICAgICAgICAgICB8IDMgKyst
CiBtbS9wYWdlX2FsbG9jLmMgICAgICAgICAgICAgfCA2ICsrKystLQogNCBmaWxlcyBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
dmlydGlvL3ZpcnRpb19tZW0uYyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19tZW0uYwppbmRleCA5
ZmM5ZWM0YTI1ZjUuLjU1ODVmYzY3YjY1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy92aXJ0aW8vdmly
dGlvX21lbS5jCisrKyBiL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19tZW0uYwpAQCAtMTE0OCw3ICsx
MTQ4LDcgQEAgc3RhdGljIGludCB2aXJ0aW9fbWVtX2Zha2Vfb2ZmbGluZSh1bnNpZ25lZCBsb25n
IHBmbiwgdW5zaWduZWQgbG9uZyBucl9wYWdlcykKIAkgKi8KIAlmb3IgKHJldHJ5X2NvdW50ID0g
MDsgcmV0cnlfY291bnQgPCA1OyByZXRyeV9jb3VudCsrKSB7CiAJCXJjID0gYWxsb2NfY29udGln
X3JhbmdlKHBmbiwgcGZuICsgbnJfcGFnZXMsIE1JR1JBVEVfTU9WQUJMRSwKLQkJCQkJR0ZQX0tF
Uk5FTCk7CisJCQkJCUdGUF9LRVJORUwsIEFMTE9DX0NPTlRJR19OT1JNQUwpOwogCQlpZiAocmMg
PT0gLUVOT01FTSkKIAkJCS8qIHdob29wcywgb3V0IG9mIG1lbW9yeSAqLwogCQkJcmV0dXJuIHJj
OwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9nZnAuaCBiL2luY2x1ZGUvbGludXgvZ2ZwLmgK
aW5kZXggYzYwMzIzN2UwMDZjLi5hZDU4NzI2OTk2OTIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGlu
dXgvZ2ZwLmgKKysrIGIvaW5jbHVkZS9saW51eC9nZnAuaApAQCAtNjI0LDkgKzYyNCwxNSBAQCBz
dGF0aWMgaW5saW5lIGJvb2wgcG1fc3VzcGVuZGVkX3N0b3JhZ2Uodm9pZCkKICNlbmRpZiAvKiBD
T05GSUdfUE1fU0xFRVAgKi8KIAogI2lmZGVmIENPTkZJR19DT05USUdfQUxMT0MKK2VudW0gYWxs
b2NfY29udGlnX21vZGUgeworCS8qIHRyeSBzZXZlcmFsIHdheXMgdG8gaW5jcmVhc2Ugc3VjY2Vz
cyByYXRpbyBvZiBtZW1vcnkgYWxsb2NhdGlvbiAqLworCUFMTE9DX0NPTlRJR19OT1JNQUwsCit9
OworCiAvKiBUaGUgYmVsb3cgZnVuY3Rpb25zIG11c3QgYmUgcnVuIG9uIGEgcmFuZ2UgZnJvbSBh
IHNpbmdsZSB6b25lLiAqLwogZXh0ZXJuIGludCBhbGxvY19jb250aWdfcmFuZ2UodW5zaWduZWQg
bG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQsCi0JCQkgICAgICB1bnNpZ25lZCBtaWdyYXRl
dHlwZSwgZ2ZwX3QgZ2ZwX21hc2spOworCQkJICAgICAgdW5zaWduZWQgbWlncmF0ZXR5cGUsIGdm
cF90IGdmcF9tYXNrLAorCQkJICAgICAgZW51bSBhbGxvY19jb250aWdfbW9kZSBtb2RlKTsKIGV4
dGVybiBzdHJ1Y3QgcGFnZSAqYWxsb2NfY29udGlnX3BhZ2VzKHVuc2lnbmVkIGxvbmcgbnJfcGFn
ZXMsIGdmcF90IGdmcF9tYXNrLAogCQkJCSAgICAgICBpbnQgbmlkLCBub2RlbWFza190ICpub2Rl
bWFzayk7CiAjZW5kaWYKZGlmZiAtLWdpdCBhL21tL2NtYS5jIGIvbW0vY21hLmMKaW5kZXggMzY5
MmEzNGUyMzUzLi44MDEwYzFiYTA0YjAgMTAwNjQ0Ci0tLSBhL21tL2NtYS5jCisrKyBiL21tL2Nt
YS5jCkBAIC00NTQsNyArNDU0LDggQEAgc3RydWN0IHBhZ2UgKmNtYV9hbGxvYyhzdHJ1Y3QgY21h
ICpjbWEsIHNpemVfdCBjb3VudCwgdW5zaWduZWQgaW50IGFsaWduLAogCiAJCXBmbiA9IGNtYS0+
YmFzZV9wZm4gKyAoYml0bWFwX25vIDw8IGNtYS0+b3JkZXJfcGVyX2JpdCk7CiAJCXJldCA9IGFs
bG9jX2NvbnRpZ19yYW5nZShwZm4sIHBmbiArIGNvdW50LCBNSUdSQVRFX0NNQSwKLQkJCQkgICAg
IEdGUF9LRVJORUwgfCAobm9fd2FybiA/IF9fR0ZQX05PV0FSTiA6IDApKTsKKwkJCQkgICAgIEdG
UF9LRVJORUwgfCAobm9fd2FybiA/IF9fR0ZQX05PV0FSTiA6IDApLAorCQkJCSAgICAgQUxMT0Nf
Q09OVElHX05PUk1BTCk7CiAKIAkJaWYgKHJldCA9PSAwKSB7CiAJCQlwYWdlID0gcGZuX3RvX3Bh
Z2UocGZuKTsKZGlmZiAtLWdpdCBhL21tL3BhZ2VfYWxsb2MuYyBiL21tL3BhZ2VfYWxsb2MuYwpp
bmRleCBmOTFkZjU5M2JmNzEuLmFkZmJmZDk1ZmJjMyAxMDA2NDQKLS0tIGEvbW0vcGFnZV9hbGxv
Yy5jCisrKyBiL21tL3BhZ2VfYWxsb2MuYwpAQCAtODUzMyw2ICs4NTMzLDcgQEAgc3RhdGljIHZv
aWQgX19hbGxvY19jb250aWdfY2xlYXJfcmFuZ2UodW5zaWduZWQgbG9uZyBzdGFydF9wZm4sCiAg
KgkJCWJlIGVpdGhlciBvZiB0aGUgdHdvLgogICogQGdmcF9tYXNrOglHRlAgbWFzayB0byB1c2Ug
ZHVyaW5nIGNvbXBhY3Rpb24uIF9fR0ZQX1pFUk8gY2xlYXJzIGFsbG9jYXRlZAogICoJCXBhZ2Vz
LgorICogQG1vZGU6CWhvdyBoYXJkIGl0IHdpbGwgdHJ5IHRvIGluY3JlYXNlIGFsbG9jYXRpb24g
c3VjY2VzcyByYXRpbwogICoKICAqIFRoZSBQRk4gcmFuZ2UgZG9lcyBub3QgaGF2ZSB0byBiZSBw
YWdlYmxvY2sgb3IgTUFYX09SREVSX05SX1BBR0VTCiAgKiBhbGlnbmVkLiAgVGhlIFBGTiByYW5n
ZSBtdXN0IGJlbG9uZyB0byBhIHNpbmdsZSB6b25lLgpAQCAtODU0Niw3ICs4NTQ3LDggQEAgc3Rh
dGljIHZvaWQgX19hbGxvY19jb250aWdfY2xlYXJfcmFuZ2UodW5zaWduZWQgbG9uZyBzdGFydF9w
Zm4sCiAgKiBuZWVkIHRvIGJlIGZyZWVkIHdpdGggZnJlZV9jb250aWdfcmFuZ2UoKS4KICAqLwog
aW50IGFsbG9jX2NvbnRpZ19yYW5nZSh1bnNpZ25lZCBsb25nIHN0YXJ0LCB1bnNpZ25lZCBsb25n
IGVuZCwKLQkJICAgICAgIHVuc2lnbmVkIG1pZ3JhdGV0eXBlLCBnZnBfdCBnZnBfbWFzaykKKwkJ
ICAgICAgIHVuc2lnbmVkIG1pZ3JhdGV0eXBlLCBnZnBfdCBnZnBfbWFzaywKKwkJICAgICAgIGVu
dW0gYWxsb2NfY29udGlnX21vZGUgbW9kZSkKIHsKIAl1bnNpZ25lZCBsb25nIG91dGVyX3N0YXJ0
LCBvdXRlcl9lbmQ7CiAJdW5zaWduZWQgaW50IG9yZGVyOwpAQCAtODY4OSw3ICs4NjkxLDcgQEAg
c3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19wYWdlcyh1bnNpZ25lZCBsb25nIHN0YXJ0X3BmbiwK
IAl1bnNpZ25lZCBsb25nIGVuZF9wZm4gPSBzdGFydF9wZm4gKyBucl9wYWdlczsKIAogCXJldHVy
biBhbGxvY19jb250aWdfcmFuZ2Uoc3RhcnRfcGZuLCBlbmRfcGZuLCBNSUdSQVRFX01PVkFCTEUs
Ci0JCQkJICBnZnBfbWFzayk7CisJCQkJICBnZnBfbWFzaywgQUxMT0NfQ09OVElHX05PUk1BTCk7
CiB9CiAKIHN0YXRpYyBib29sIHBmbl9yYW5nZV92YWxpZF9jb250aWcoc3RydWN0IHpvbmUgKnos
IHVuc2lnbmVkIGxvbmcgc3RhcnRfcGZuLAotLSAKMi4yOS4yLjQ1NC5nYWZmMjBkYTNhMi1nb29n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
