Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 820B5243190
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Aug 2020 01:56:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4340F607A7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Aug 2020 23:56:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2EEBE666D8; Wed, 12 Aug 2020 23:56:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F21E6092F;
	Wed, 12 Aug 2020 23:55:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5915D60785
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Aug 2020 23:55:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3C26D6092F; Wed, 12 Aug 2020 23:55:52 +0000 (UTC)
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by lists.linaro.org (Postfix) with ESMTPS id 1159960785
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Aug 2020 23:55:51 +0000 (UTC)
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5f348186ba4c2cd367919a10 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 12 Aug 2020 23:55:50
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C27AAC43391; Wed, 12 Aug 2020 23:55:49 +0000 (UTC)
Received: from jordan-laptop.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B14B0C433C9;
 Wed, 12 Aug 2020 23:55:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B14B0C433C9
From: Jordan Crouse <jcrouse@codeaurora.org>
To: linux-arm-msm@vger.kernel.org
Date: Wed, 12 Aug 2020 17:55:44 -0600
Message-Id: <20200812235544.2289895-1-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gustavo Padovan <gustavo@padovan.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC PATCH v1] dma-fence-array: Deal with
	sub-fences that are signaled late
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

VGhpcyBpcyBhbiBSRkMgYmVjYXVzZSBJJ20gc3RpbGwgdHJ5aW5nIHRvIGdyb2sgdGhlIGNvcnJl
Y3QgYmVoYXZpb3IuCgpDb25zaWRlciBhIGRtYV9mZW5jZV9hcnJheSBjcmVhdGVkIHR3byB0d28g
ZmVuY2UgYW5kIHNpZ25hbF9vbl9hbnkgaXMgdHJ1ZS4KQSByZWZlcmVuY2UgdG8gZG1hX2ZlbmNl
X2FycmF5IGlzIHRha2VuIGZvciBlYWNoIHdhaXRpbmcgZmVuY2UuCgpXaGVuIHRoZSBjbGllbnQg
Y2FsbHMgZG1hX2ZlbmNlX3dhaXQoKSBvbmx5IG9uZSBvZiB0aGUgZmVuY2VzIGlzIHNpZ25hbGVk
LgpUaGUgY2xpZW50IHJldHVybnMgc3VjY2Vzc2Z1bGx5IGZyb20gdGhlIHdhaXQgYW5kIHB1dHMg
aXQncyByZWZlcmVuY2UgdG8KdGhlIGFycmF5IGZlbmNlIGJ1dCB0aGUgYXJyYXkgZmVuY2Ugc3Rp
bGwgcmVtYWlucyBiZWNhdXNlIG9mIHRoZSByZW1haW5pbmcKdW4tc2lnbmFsZWQgZmVuY2UuCgpO
b3cgY29uc2lkZXIgdGhhdCB0aGUgdW5zaWduYWxlZCBmZW5jZSBpcyBzaWduYWxlZCB3aGlsZSB0
aGUgdGltZWxpbmUgaXMgYmVpbmcKZGVzdHJveWVkIG11Y2ggbGF0ZXIuIFRoZSB0aW1lbGluZSBk
ZXN0cm95IGNhbGxzIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCkuIFRoZQpmb2xsb3dpbmcgc2Vx
dWVuY2Ugb2NjdXJzOgoKMSkgZG1hX2ZlbmNlX2FycmF5X2NiX2Z1bmMgaXMgY2FsbGVkCgoyKSBh
cnJheS0+bnVtX3BlbmRpbmcgaXMgMCAoYmVjYXVzZSBpdCB3YXMgc2V0IHRvIDEgZHVlIHRvIHNp
Z25hbF9vbl9hbnkpIHNvIHRoZQpjYWxsYmFjayBmdW5jdGlvbiBjYWxscyBkbWFfZmVuY2VfcHV0
KCkgaW5zdGVhZCBvZiB0cmlnZ2VyaW5nIHRoZSBpcnEgd29yawoKMykgVGhlIGFycmF5IGZlbmNl
IGlzIHJlbGVhc2VkIHdoaWNoIGluIHR1cm4gcHV0cyB0aGUgbGluZ2VyaW5nIGZlbmNlIHdoaWNo
IGlzCnRoZW4gcmVsZWFzZWQKCjQpIGRlYWRsb2NrIHdpdGggdGhlIHRpbWVsaW5lCgpJIHRoaW5r
IHRoYXQgd2UgY2FuIGZpeCB0aGlzIHdpdGggdGhlIGF0dGFjaGVkIHBhdGNoLiBPbmNlIHRoZSBm
ZW5jZSBpcwpzaWduYWxlZCBzaWduYWxpbmcgaXQgYWdhaW4gaW4gdGhlIGlycSB3b3JrZXIgc2hv
dWxkbid0IGh1cnQgYW55dGhpbmcuIFRoZSBvbmx5CmdvdGNoYSBtaWdodCBiZSBob3cgdGhlIGVy
cm9yIGlzIHByb3BhZ2F0ZWQgLSBJIHdhc24ndCBxdWl0ZSBzdXJlIHRoZSBpbnRlbnQgb2YKY2xl
YXJpbmcgaXQgb25seSBhZnRlciBnZXR0aW5nIHRvIHRoZSBpcnEgd29ya2VyLgoKU2lnbmVkLW9m
Zi1ieTogSm9yZGFuIENyb3VzZSA8amNyb3VzZUBjb2RlYXVyb3JhLm9yZz4KLS0tCgogZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMTAgKysrKy0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFy
cmF5LmMKaW5kZXggZDNmYmQ5NTBiZTk0Li5iODgyOWIwMjQyNTUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLWFycmF5LmMKQEAgLTQ2LDggKzQ2LDYgQEAgc3RhdGljIHZvaWQgaXJxX2RtYV9mZW5jZV9h
cnJheV93b3JrKHN0cnVjdCBpcnFfd29yayAqd3JrKQogewogCXN0cnVjdCBkbWFfZmVuY2VfYXJy
YXkgKmFycmF5ID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCphcnJheSksIHdvcmspOwogCi0J
ZG1hX2ZlbmNlX2FycmF5X2NsZWFyX3BlbmRpbmdfZXJyb3IoYXJyYXkpOwotCiAJZG1hX2ZlbmNl
X3NpZ25hbCgmYXJyYXktPmJhc2UpOwogCWRtYV9mZW5jZV9wdXQoJmFycmF5LT5iYXNlKTsKIH0K
QEAgLTYxLDEwICs1OSwxMCBAQCBzdGF0aWMgdm9pZCBkbWFfZmVuY2VfYXJyYXlfY2JfZnVuYyhz
dHJ1Y3QgZG1hX2ZlbmNlICpmLAogCiAJZG1hX2ZlbmNlX2FycmF5X3NldF9wZW5kaW5nX2Vycm9y
KGFycmF5LCBmLT5lcnJvcik7CiAKLQlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmYXJyYXktPm51
bV9wZW5kaW5nKSkKLQkJaXJxX3dvcmtfcXVldWUoJmFycmF5LT53b3JrKTsKLQllbHNlCi0JCWRt
YV9mZW5jZV9wdXQoJmFycmF5LT5iYXNlKTsKKwlpZiAoIWF0b21pY19kZWNfYW5kX3Rlc3QoJmFy
cmF5LT5udW1fcGVuZGluZykpCisJCWRtYV9mZW5jZV9hcnJheV9zZXRfcGVuZGluZ19lcnJvcihh
cnJheSwgZi0+ZXJyb3IpOworCisJaXJxX3dvcmtfcXVldWUoJmFycmF5LT53b3JrKTsKIH0KIAog
c3RhdGljIGJvb2wgZG1hX2ZlbmNlX2FycmF5X2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
