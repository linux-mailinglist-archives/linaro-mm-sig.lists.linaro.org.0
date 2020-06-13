Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D027E219F3F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:45:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F159B66034
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:45:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E243B664F9; Thu,  9 Jul 2020 11:45:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	HK_RANDOM_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91D7C665B5;
	Thu,  9 Jul 2020 11:34:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 159586655C
 for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2020 12:31:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 07D6B66566; Sat, 13 Jun 2020 12:31:27 +0000 (UTC)
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.10])
 by lists.linaro.org (Postfix) with ESMTP id 7104E6655C
 for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2020 12:31:26 +0000 (UTC)
Received: from localhost.localdomain (unknown [120.229.255.202])
 by app1 (Coremail) with SMTP id XAUFCgB3fTH3xuReHq4YAA--.20878S3;
 Sat, 13 Jun 2020 20:30:48 +0800 (CST)
From: Xiyu Yang <xiyuyang19@fudan.edu.cn>
To: Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
Date: Sat, 13 Jun 2020 20:30:25 +0800
Message-Id: <1592051425-94019-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XAUFCgB3fTH3xuReHq4YAA--.20878S3
X-Coremail-Antispam: 1UD129KBjvJXoWxJrWUZFyDJF1DZr45tr4UXFb_yoW8JFWxpr
 s3GrW2krn8tF17X3sIy3W0gF95Ca47XFySgFZxCas8Zwn0v3sxKr15t390qFyUZrZ2qF42
 qr1SkrsxuF1DuFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9E14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
 JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAac4AC62xK8xCEY4vEwIxC4wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
 0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUXVWUAwAv7VC2z280aVAFwI0_Jr0_Gr
 1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IE
 rcIFxwACI402YVCY1x02628vn2kIc2xKxwCY02Avz4vE14v_Xr1l42xK82IYc2Ij64vIr4
 1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK
 67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI
 8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAv
 wI8IcIk0rVW3JVWrJr1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267
 AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbeOJUUUUUU==
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn, kjlu@umn.edu,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>
Subject: [Linaro-mm-sig] [PATCH] drm/ttm: Fix dma_fence refcnt leak when
	adding move fence
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

dHRtX2JvX2FkZF9tb3ZlX2ZlbmNlKCkgaW52b2tlcyBkbWFfZmVuY2VfZ2V0KCksIHdoaWNoIHJl
dHVybnMgYQpyZWZlcmVuY2Ugb2YgdGhlIHNwZWNpZmllZCBkbWFfZmVuY2Ugb2JqZWN0IHRvICJm
ZW5jZSIgd2l0aCBpbmNyZWFzZWQKcmVmY250LgoKV2hlbiB0dG1fYm9fYWRkX21vdmVfZmVuY2Uo
KSByZXR1cm5zLCBsb2NhbCB2YXJpYWJsZSAiZmVuY2UiIGJlY29tZXMKaW52YWxpZCwgc28gdGhl
IHJlZmNvdW50IHNob3VsZCBiZSBkZWNyZWFzZWQgdG8ga2VlcCByZWZjb3VudCBiYWxhbmNlZC4K
ClRoZSByZWZlcmVuY2UgY291bnRpbmcgaXNzdWUgaGFwcGVucyBpbiBvbmUgZXhjZXB0aW9uIGhh
bmRsaW5nIHBhdGggb2YKdHRtX2JvX2FkZF9tb3ZlX2ZlbmNlKCkuIFdoZW4gbm9fd2FpdF9ncHUg
ZmxhZyBpcyBlcXVhbHMgdG8gdHJ1ZSwgdGhlCmZ1bmN0aW9uIGZvcmdldHMgdG8gZGVjcmVhc2Ug
dGhlIHJlZmNudCBpbmNyZWFzZWQgYnkgZG1hX2ZlbmNlX2dldCgpLApjYXVzaW5nIGEgcmVmY250
IGxlYWsuCgpGaXggdGhpcyBpc3N1ZSBieSBjYWxsaW5nIGRtYV9mZW5jZV9wdXQoKSB3aGVuIG5v
X3dhaXRfZ3B1IGZsYWcgaXMKZXF1YWxzIHRvIHRydWUuCgpTaWduZWQtb2ZmLWJ5OiBYaXl1IFlh
bmcgPHhpeXV5YW5nMTlAZnVkYW4uZWR1LmNuPgpTaWduZWQtb2ZmLWJ5OiBYaW4gVGFuIDx0YW54
aW4uY3RmQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIHwgNCAr
KystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKaW5kZXggZjczYjgxYzI1NzZlLi4wZjIwZTE0YTRjZmQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90
dG1fYm8uYwpAQCAtODgzLDggKzg4MywxMCBAQCBzdGF0aWMgaW50IHR0bV9ib19hZGRfbW92ZV9m
ZW5jZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCWlmICghZmVuY2UpCiAJCXJldHVy
biAwOwogCi0JaWYgKG5vX3dhaXRfZ3B1KQorCWlmIChub193YWl0X2dwdSkgeworCQlkbWFfZmVu
Y2VfcHV0KGZlbmNlKTsKIAkJcmV0dXJuIC1FQlVTWTsKKwl9CiAKIAlkbWFfcmVzdl9hZGRfc2hh
cmVkX2ZlbmNlKGJvLT5iYXNlLnJlc3YsIGZlbmNlKTsKIAotLSAKMi43LjQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
