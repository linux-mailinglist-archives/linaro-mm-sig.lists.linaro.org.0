Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 60276248506
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:46:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85F3F6162C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:46:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 78CC2619B1; Tue, 18 Aug 2020 12:46:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDA6B666D8;
	Tue, 18 Aug 2020 12:32:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5CEC0606A3
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 14:47:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 519FD61513; Mon,  3 Aug 2020 14:47:47 +0000 (UTC)
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
 [209.85.160.202])
 by lists.linaro.org (Postfix) with ESMTPS id 1425F606A3
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 14:47:46 +0000 (UTC)
Received: by mail-qt1-f202.google.com with SMTP id q7so23192946qtd.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 07:47:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=exegq5bRss6SDj4yQZt05Kc3+gr2w1N7iotmmiqvfaE=;
 b=S+Luqp13EoELtISMwzy9PMr18kUvNXdCaaCHrhgz02DppJsQFwOw+HiCDmbaTEEOhz
 cseP3HueT2z9JNUdh5OJu0e2B3jGWu3pSZL847J1iqQcULKx4iGsms5N942CHPJiTs5w
 O166FvIYIpgQq9ZK1syDy8g6te/ikqZkEdLLJrzhVdRo6Z7wANjiP8ST0jBxvuRdrkN2
 o2yQPtAdEWKHIlolPx5IwvNhLB4I34nsc4vA17B1aN+XKvtx2KgTDNIAUW7WEUldqW/r
 8XDCm0gU61NDmcI6heEpmRycPRmAA3qUgrpMOE6vvtanasV5sDo70sxQqqNJFwlMghbt
 4KPQ==
X-Gm-Message-State: AOAM532TfxXU3UbOzuhcbkQoK26bvr20I+xkYQAKYC+aIdhw1irK0kER
 f0ULZrpewyl8PdbSw3GMFZfcuQtFPxzRr9Ut5g==
X-Google-Smtp-Source: ABdhPJzDwQ0aX/7NlvPVgwHIaoyHgpXGgCOEtbhY3RvNh0Xr+RtcQtfdf3+ncwToVPid9YW6tzvTvt4z+owCWodSjw==
X-Received: by 2002:a0c:b743:: with SMTP id q3mr16777556qve.229.1596466065553; 
 Mon, 03 Aug 2020 07:47:45 -0700 (PDT)
Date: Mon,  3 Aug 2020 14:47:18 +0000
In-Reply-To: <20200803144719.3184138-1-kaleshsingh@google.com>
Message-Id: <20200803144719.3184138-2-kaleshsingh@google.com>
Mime-Version: 1.0
References: <20200803144719.3184138-1-kaleshsingh@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
From: Kalesh Singh <kaleshsingh@google.com>
To: Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 Ioannis Ilkos <ilkos@google.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, John Stultz <john.stultz@linaro.org>,
 Kalesh Singh <kaleshsingh@google.com>, linux-fsdevel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 1/2] fs: Add fd_install file operation
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

UHJvdmlkZXMgYSBwZXIgcHJvY2VzcyBob29rIGZvciB0aGUgYWNxdWlzaXRpb24gb2YgZmlsZSBk
ZXNjcmlwdG9ycywKZGVzcGl0ZSB0aGUgbWV0aG9kIHVzZWQgdG8gb2J0YWluIHRoZSBkZXNjcmlw
dG9yLgoKU2lnbmVkLW9mZi1ieTogS2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUuY29t
PgotLS0KIERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvdmZzLnJzdCB8IDUgKysrKysKIGZzL2Zp
bGUuYyAgICAgICAgICAgICAgICAgICAgICAgICB8IDMgKysrCiBpbmNsdWRlL2xpbnV4L2ZzLmgg
ICAgICAgICAgICAgICAgfCAxICsKIDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy92ZnMucnN0IGIvRG9jdW1lbnRh
dGlvbi9maWxlc3lzdGVtcy92ZnMucnN0CmluZGV4IGVkMTc3NzFjMjEyYi4uOTViMzAxNDJjOGQ5
IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3Zmcy5yc3QKKysrIGIvRG9j
dW1lbnRhdGlvbi9maWxlc3lzdGVtcy92ZnMucnN0CkBAIC0xMTIzLDYgKzExMjMsMTEgQEAgb3Ro
ZXJ3aXNlIG5vdGVkLgogYGBmYWR2aXNlYGAKIAlwb3NzaWJseSBjYWxsZWQgYnkgdGhlIGZhZHZp
c2U2NCgpIHN5c3RlbSBjYWxsLgogCitgYGZkX2luc3RhbGxgYAorCWNhbGxlZCBieSB0aGUgVkZT
IHdoZW4gYSBmaWxlIGRlc2NyaXB0b3IgaXMgaW5zdGFsbGVkIGluIHRoZQorCXByb2Nlc3MncyBm
aWxlIGRlc2NyaXB0b3IgdGFibGUsIHJlZ2FyZGxlc3MgaG93IHRoZSBmaWxlIGRlc2NyaXB0b3IK
Kwl3YXMgYWNxdWlyZWQgLS0gYmUgaXQgdmlhIHRoZSBvcGVuIHN5c2NhbGwsIHJlY2VpdmVkIG92
ZXIgSVBDLCBldGMuCisKIE5vdGUgdGhhdCB0aGUgZmlsZSBvcGVyYXRpb25zIGFyZSBpbXBsZW1l
bnRlZCBieSB0aGUgc3BlY2lmaWMKIGZpbGVzeXN0ZW0gaW4gd2hpY2ggdGhlIGlub2RlIHJlc2lk
ZXMuICBXaGVuIG9wZW5pbmcgYSBkZXZpY2Ugbm9kZQogKGNoYXJhY3RlciBvciBibG9jayBzcGVj
aWFsKSBtb3N0IGZpbGVzeXN0ZW1zIHdpbGwgY2FsbCBzcGVjaWFsCmRpZmYgLS1naXQgYS9mcy9m
aWxlLmMgYi9mcy9maWxlLmMKaW5kZXggYWJiOGI3MDgxZDdhLi5mNWRiODYyMmI4NTEgMTAwNjQ0
Ci0tLSBhL2ZzL2ZpbGUuYworKysgYi9mcy9maWxlLmMKQEAgLTYxNiw2ICs2MTYsOSBAQCB2b2lk
IF9fZmRfaW5zdGFsbChzdHJ1Y3QgZmlsZXNfc3RydWN0ICpmaWxlcywgdW5zaWduZWQgaW50IGZk
LAogdm9pZCBmZF9pbnN0YWxsKHVuc2lnbmVkIGludCBmZCwgc3RydWN0IGZpbGUgKmZpbGUpCiB7
CiAJX19mZF9pbnN0YWxsKGN1cnJlbnQtPmZpbGVzLCBmZCwgZmlsZSk7CisKKwlpZiAoZmlsZS0+
Zl9vcC0+ZmRfaW5zdGFsbCkKKwkJZmlsZS0+Zl9vcC0+ZmRfaW5zdGFsbChmZCwgZmlsZSk7CiB9
CiAKIEVYUE9SVF9TWU1CT0woZmRfaW5zdGFsbCk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2ZzLmggYi9pbmNsdWRlL2xpbnV4L2ZzLmgKaW5kZXggZjVhYmJhODYxMDdkLi5iOTc2ZmJlOGM5
MDIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZnMuaAorKysgYi9pbmNsdWRlL2xpbnV4L2Zz
LmgKQEAgLTE4NjQsNiArMTg2NCw3IEBAIHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgewogCQkJCSAg
IHN0cnVjdCBmaWxlICpmaWxlX291dCwgbG9mZl90IHBvc19vdXQsCiAJCQkJICAgbG9mZl90IGxl
biwgdW5zaWduZWQgaW50IHJlbWFwX2ZsYWdzKTsKIAlpbnQgKCpmYWR2aXNlKShzdHJ1Y3QgZmls
ZSAqLCBsb2ZmX3QsIGxvZmZfdCwgaW50KTsKKwl2b2lkICgqZmRfaW5zdGFsbCkoaW50LCBzdHJ1
Y3QgZmlsZSAqKTsKIH0gX19yYW5kb21pemVfbGF5b3V0OwogCiBzdHJ1Y3QgaW5vZGVfb3BlcmF0
aW9ucyB7Ci0tIAoyLjI4LjAuMTYzLmc2MTA0Y2MyZjBiNi1nb29nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
