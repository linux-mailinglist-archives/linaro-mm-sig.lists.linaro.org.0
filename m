Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1001126FAA6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Sep 2020 12:33:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD6C16094E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Sep 2020 10:33:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BB4E160CB2; Fri, 18 Sep 2020 10:33:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05EB9609BB;
	Fri, 18 Sep 2020 10:32:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DAE9A6094E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Sep 2020 10:32:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CCBA0609BB; Fri, 18 Sep 2020 10:32:54 +0000 (UTC)
Received: from so254-54.mailgun.net (so254-54.mailgun.net [198.61.254.54])
 by lists.linaro.org (Postfix) with ESMTPS id 66E636094E
 for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Sep 2020 10:32:51 +0000 (UTC)
X-Mailgun-Sending-Ip: 198.61.254.54
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5f648ccd6ace44cacc03d6a1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 18 Sep 2020 10:32:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EAEBAC433CB; Fri, 18 Sep 2020 10:32:44 +0000 (UTC)
Received: from charante-linux.qualcomm.com (unknown [202.46.22.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 21028C43382;
 Fri, 18 Sep 2020 10:32:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 21028C43382
From: Charan Teja Reddy <charante@codeaurora.org>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	arnd@arndb.de
Date: Fri, 18 Sep 2020 16:02:31 +0530
Message-Id: <1600425151-27670-1-git-send-email-charante@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 Charan Teja Reddy <charante@codeaurora.org>, stable@vger.kernel.org,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dmabuf: fix NULL pointer dereference in
	dma_buf_release()
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

TlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGlzIG9ic2VydmVkIHdoaWxlIGV4cG9ydGluZyB0aGUg
ZG1hYnVmIGJ1dApmYWlsZWQgdG8gYWxsb2NhdGUgdGhlICdzdHJ1Y3QgZmlsZScgd2hpY2ggcmVz
dWx0cyBpbnRvIHRoZSBkcm9wcGluZyBvZgp0aGUgYWxsb2NhdGVkIGRlbnRyeSBjb3JyZXNwb25k
aW5nIHRvIHRoaXMgZmlsZSBpbiB0aGUgZG1hYnVmIGZzLCB3aGljaAppcyBlbmRpbmcgdXAgaW4g
ZG1hX2J1Zl9yZWxlYXNlKCkgYW5kIGFjY2Vzc2luZyB0aGUgdW5pbml0aWFsemVkCmRlbnRyeS0+
ZF9mc2RhdGEuCgpDYWxsIHN0YWNrIG9uIDUuNCBpcyBiZWxvdzoKIGRtYV9idWZfcmVsZWFzZSsw
eDJjLzB4MjU0IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmM6ODgKIF9fZGVudHJ5X2tpbGwrMHgy
OTQvMHgzMWMgZnMvZGNhY2hlLmM6NTg0CiBkZW50cnlfa2lsbCBmcy9kY2FjaGUuYzo2NzMgW2lu
bGluZV0KIGRwdXQrMHgyNTAvMHgzODAgZnMvZGNhY2hlLmM6ODU5CiBwYXRoX3B1dCsweDI0LzB4
NDAgZnMvbmFtZWkuYzo0ODUKIGFsbG9jX2ZpbGVfcHNldWRvKzB4MWE0LzB4MjAwIGZzL2ZpbGVf
dGFibGUuYzoyMzUKIGRtYV9idWZfZ2V0ZmlsZSBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jOjQ3
MyBbaW5saW5lXQogZG1hX2J1Zl9leHBvcnQrMHgyNWMvMHgzZWMgZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYzo1ODUKCkZpeCB0aGlzIGJ5IGNoZWNraW5nIGZvciB0aGUgdmFsaWQgcG9pbnRlciBp
biB0aGUgZGVudHJ5LT5kX2ZzZGF0YS4KCkZpeGVzOiA0YWI1OWMzYzYzOGMgKCJkbWEtYnVmOiBN
b3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZyb20gZm9wcyB0byBkZW50cnlfb3BzIikKQ2M6IDxzdGFi
bGVAdmdlci5rZXJuZWwub3JnPiBbNS43K10KU2lnbmVkLW9mZi1ieTogQ2hhcmFuIFRlamEgUmVk
ZHkgPGNoYXJhbnRlQGNvZGVhdXJvcmEub3JnPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5k
ZXggNTg1NjRkODIuLjg0NDk2N2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtNTksNiArNTksOCBAQCBzdGF0
aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQogCXN0cnVjdCBk
bWFfYnVmICpkbWFidWY7CiAKIAlkbWFidWYgPSBkZW50cnktPmRfZnNkYXRhOworCWlmICh1bmxp
a2VseSghZG1hYnVmKSkKKwkJcmV0dXJuOwogCiAJQlVHX09OKGRtYWJ1Zi0+dm1hcHBpbmdfY291
bnRlcik7CiAKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3Zh
dGlvbiBDZW50ZXIsIEluYy4gaXMgYQptZW1iZXIgb2YgdGhlIENvZGUgQXVyb3JhIEZvcnVtLCBo
b3N0ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
