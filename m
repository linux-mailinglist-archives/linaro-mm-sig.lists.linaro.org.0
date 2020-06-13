Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F46E219F3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:44:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C11AC60190
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:44:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B101966572; Thu,  9 Jul 2020 11:44:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	HK_RANDOM_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,SPF_HELO_PASS,
	SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3E4E665A6;
	Thu,  9 Jul 2020 11:34:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 907756655C
 for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2020 12:29:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7E38966566; Sat, 13 Jun 2020 12:29:52 +0000 (UTC)
Received: from fudan.edu.cn (mail.fudan.edu.cn [202.120.224.73])
 by lists.linaro.org (Postfix) with ESMTP id AE6C66655C
 for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2020 12:29:48 +0000 (UTC)
Received: from localhost.localdomain (unknown [120.229.255.202])
 by app2 (Coremail) with SMTP id XQUFCgCXnKCQxuReIWm1AA--.270S3;
 Sat, 13 Jun 2020 20:29:05 +0800 (CST)
From: Xiyu Yang <xiyuyang19@fudan.edu.cn>
To: Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
Date: Sat, 13 Jun 2020 20:28:38 +0800
Message-Id: <1592051318-93958-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XQUFCgCXnKCQxuReIWm1AA--.270S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Cr1xXFyUXF4rKrykuw47CFg_yoW8Gr1xpr
 4xGryj9rnYqFy7tw13A3W5ZFyF9asxtFyFgrZ0ka4rZan8JasxGr4rtrWYgryUZrWxAr1I
 qF1Sgw43ZF1Dua7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9E14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
 JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAac4AC62xK8xCEY4vEwIxC4wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
 0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr
 1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IE
 rcIFxwACI402YVCY1x02628vn2kIc2xKxwCY02Avz4vE14v_Xr1l42xK82IYc2Ij64vIr4
 1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK
 67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI
 8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAv
 wI8IcIk0rVW3JVWrJr1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267
 AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbgAw7UUUUU==
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn, kjlu@umn.edu,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>
Subject: [Linaro-mm-sig] [PATCH] drm/ttm: Fix dma_fence refcnt leak in
	ttm_bo_vm_fault_reserved
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

dHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKCkgaW52b2tlcyBkbWFfZmVuY2VfZ2V0KCksIHdoaWNo
IHJldHVybnMgYQpyZWZlcmVuY2Ugb2YgdGhlIHNwZWNpZmllZCBkbWFfZmVuY2Ugb2JqZWN0IHRv
ICJtb3ZpbmciIHdpdGggaW5jcmVhc2VkCnJlZmNudC4KCldoZW4gdHRtX2JvX3ZtX2ZhdWx0X3Jl
c2VydmVkKCkgcmV0dXJucywgbG9jYWwgdmFyaWFibGUgIm1vdmluZyIgYmVjb21lcwppbnZhbGlk
LCBzbyB0aGUgcmVmY291bnQgc2hvdWxkIGJlIGRlY3JlYXNlZCB0byBrZWVwIHJlZmNvdW50IGJh
bGFuY2VkLgoKVGhlIHJlZmVyZW5jZSBjb3VudGluZyBpc3N1ZSBoYXBwZW5zIGluIHNldmVyYWwg
ZXhjZXB0aW9uIGhhbmRsaW5nIHBhdGhzCm9mIHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCgpLiBX
aGVuIHRob3NlIGVycm9yIHNjZW5hcmlvcyBvY2N1ciBzdWNoIGFzCiJlcnIiIGVxdWFscyB0byAt
RUJVU1ksIHRoZSBmdW5jdGlvbiBmb3JnZXRzIHRvIGRlY3JlYXNlIHRoZSByZWZjbnQKaW5jcmVh
c2VkIGJ5IGRtYV9mZW5jZV9nZXQoKSwgY2F1c2luZyBhIHJlZmNudCBsZWFrLgoKRml4IHRoaXMg
aXNzdWUgYnkgY2FsbGluZyBkbWFfZmVuY2VfcHV0KCkgd2hlbiBub193YWl0X2dwdSBmbGFnIGlz
CmVxdWFscyB0byB0cnVlLgoKU2lnbmVkLW9mZi1ieTogWGl5dSBZYW5nIDx4aXl1eWFuZzE5QGZ1
ZGFuLmVkdS5jbj4KU2lnbmVkLW9mZi1ieTogWGluIFRhbiA8dGFueGluLmN0ZkBnbWFpbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyB8IDIgKysKIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib192bS5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwppbmRleCBhNDNhYTcy
NzVmMTIuLmZhMDNmYWIwMjA3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdm0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCkBAIC0zMDAsOCAr
MzAwLDEwIEBAIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVjdCB2bV9m
YXVsdCAqdm1mLAogCQkJYnJlYWs7CiAJCWNhc2UgLUVCVVNZOgogCQljYXNlIC1FUkVTVEFSVFNZ
UzoKKwkJCWRtYV9mZW5jZV9wdXQobW92aW5nKTsKIAkJCXJldHVybiBWTV9GQVVMVF9OT1BBR0U7
CiAJCWRlZmF1bHQ6CisJCQlkbWFfZmVuY2VfcHV0KG1vdmluZyk7CiAJCQlyZXR1cm4gVk1fRkFV
TFRfU0lHQlVTOwogCQl9CiAKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
