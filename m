Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A1219F3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:44:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 215EB66572
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:44:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 143716657B; Thu,  9 Jul 2020 11:44:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 528FB66597;
	Thu,  9 Jul 2020 11:34:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1F7016086C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2020 07:44:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 06F83664EC; Fri, 12 Jun 2020 07:44:49 +0000 (UTC)
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
 by lists.linaro.org (Postfix) with ESMTPS id 2E0456086C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2020 07:44:47 +0000 (UTC)
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200612074444epoutp03d47be95657759b99b5936b1ce03cc7cc~XvCqZXh110065700657epoutp03t
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2020 07:44:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200612074444epoutp03d47be95657759b99b5936b1ce03cc7cc~XvCqZXh110065700657epoutp03t
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20200612074444epcas2p2a8799ff0e6b61ad7954ecf8eeddff60f~XvCqBfvhd3212532125epcas2p29;
 Fri, 12 Jun 2020 07:44:44 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.183]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49jt6K4YtXzMqYls; Fri, 12 Jun
 2020 07:44:41 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 87.55.19322.56233EE5; Fri, 12 Jun 2020 16:44:37 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20200612074436epcas2p33831d7a3781be5f5414152d42bfabcf0~XvCjHOlYv1960119601epcas2p3R;
 Fri, 12 Jun 2020 07:44:36 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200612074436epsmtrp2598ff0281ec87578f71b81888e5722af~XvCjGi_920955809558epsmtrp2X;
 Fri, 12 Jun 2020 07:44:36 +0000 (GMT)
X-AuditID: b6c32a45-7adff70000004b7a-b0-5ee332651ccf
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.E9.08382.46233EE5; Fri, 12 Jun 2020 16:44:36 +0900 (KST)
Received: from Dabang.dsn.sec.samsung.com (unknown [12.36.155.59]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200612074436epsmtip1b6169d2b81ae16ece444c69bf5945a97~XvCi7YhzQ1669816698epsmtip1F;
 Fri, 12 Jun 2020 07:44:36 +0000 (GMT)
From: Hyesoo Yu <hyesoo.yu@samsung.com>
To: 
Date: Fri, 12 Jun 2020 17:02:02 +0900
Message-Id: <20200612080204.19779-1-hyesoo.yu@samsung.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBKsWRmVeSWpSXmKPExsWy7bCmuW6q0eM4g7YuNosrX9+zWfztvMBq
 8eXKQyaLy7vmsFn0bNjKanHq7md2BzaPO9f2sHnc7z7O5HH732Nmj74tqxg9Pm+SC2CNyrHJ
 SE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy8QnQdcvMAbpASaEsMacU
 KBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgaFigV5yYW1yal66XnJ9rZWhgYGQKVJmQk7Fh
 yk7GgheCFXPmZjUwPuLrYuTkkBAwkbh/4i9jFyMXh5DADkaJzbf6GUESQgKfGCVmL02ASHxj
 lGhYf58ZpuPu9MPsEIm9QB1LLkC1f2eU2Hb3LTtIFZuAusSJLcvARokIsEis/P6dBaSIWeA8
 o8S7q7OAEhwcwgJuEqtazUBMFgFVieMbOUHKeQWsJBY9388OsUxeYuLsu4wQcUGJkzOfsIDY
 zEDx5q2zmUFGSgicYpeYtHsCO8gcCQEXieY9LBC9whKvjm+BmiMl8fndXjYIu1zibMsjVoje
 FkaJi9OuQiWMJWY9awc7jVlAU2L9Ln2IkcoSR25BreWT6Dj8F2oTr0RHmxBEo7LE/mXzoLZK
 Sjxa284KYXtIbPq/iQUSnrESO+4/YJ/AKD8LyTOzkDwzC2HvAkbmVYxiqQXFuempxUYFhsgx
 uokRnAS1XHcwTn77Qe8QIxMH4yFGCQ5mJRFeQfGHcUK8KYmVValF+fFFpTmpxYcYTYGhO5FZ
 SjQ5H5iG80riDU2NzMwMLE0tTM2MLJTEeXMVL8QJCaQnlqRmp6YWpBbB9DFxcEo1MHUFzZsv
 +Mxmh+b1D9s3P2V91VN0PaxT2/Hzmdm/wt7pSv/azrmy+gKbzjTnJu+Jixd01/lOFH9/4fSx
 UwKzmPzybA1rLa4u1GL9bKR0JuyosSLLHL2rZdvXy8/kfGGSeSW8zErzetfS9jNnd+91dxIp
 j1ofVuBolC7Z5/gydI9lDH8bVxmTWw5vzpVGgbA+D0PTuPrpNkE7ROUOxgRJvTP5HCUVts60
 e+aCxd4XChMkbWqT56T+XjAtad/H8w+PvF5dJb1ytmTZkpQ1r0+yntv947TjYeNo/efrZATO
 ORjorrzUPtdQd8b5SN1ao/bHsv7vt8lZ/nm1+vjtWbqN3/fFxWXMvvFh0XUeszZ5fyWW4oxE
 Qy3mouJEANQ2pUgLBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGLMWRmVeSWpSXmKPExsWy7bCSnG6K0eM4g9nNChZXvr5ns/jbeYHV
 4suVh0wWl3fNYbPo2bCV1eLU3c/sDmwed67tYfO4332cyeP2v8fMHn1bVjF6fN4kF8AaxWWT
 kpqTWZZapG+XwJWxYcpOxoIXghVz5mY1MD7i62Lk5JAQMJG4O/0wexcjF4eQwG5Gic/bvrFB
 JCQlZn0+yQRhC0vcbznCCmILCXxllOi9bgJiswmoS5zYsowRxBYRYJFY+f07C4jNLHCZUeL4
 tdIuRg4OYQE3iVWtZiAmi4CqxPGNnCAVvAJWEoue72eHmC4vMXH2XUaIuKDEyZlPoKbISzRv
 nc08gZFvFpLULCSpBYxMqxglUwuKc9Nziw0LDPNSy/WKE3OLS/PS9ZLzczcxgoNSS3MH4/ZV
 H/QOMTJxMB5ilOBgVhLhFRR/GCfEm5JYWZValB9fVJqTWnyIUZqDRUmc90bhwjghgfTEktTs
 1NSC1CKYLBMHp1QDU5vHO9FWm1/LVVVbNyh+TXjp6NpQeMng18VDu/plp3yd6sYrvUMytJnR
 ymr74yl3XnnpbW6/7zzXYdZNi60if1vvzEvQm1Z/ouuL+LEDl19e6U+8mhGZpy7rcvepvOOE
 nuVZ751OXXjylOuP29HvqhYSha0t1hH/tN47JR+c8M/tsl3PLr333VXhm+8eE3i/+pvq8d0v
 2w3DSiTlz9/OlvM8ttdPd0mH7OY9Rl21U+qPX53MuT9nn5tj6oO4DZvC5/24tNv7jdav9vxD
 Nyd8nMXzlmlduM3C/DcPuEK/umy/8mC20mmZwFfXXCqeTjph8HPS7ICK9bZVC89kv/15wu3E
 5a8dj3Nj1noxO72VEctQYinOSDTUYi4qTgQAXTYmH7kCAAA=
X-CMS-MailID: 20200612074436epcas2p33831d7a3781be5f5414152d42bfabcf0
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200612074436epcas2p33831d7a3781be5f5414152d42bfabcf0
References: <CGME20200612074436epcas2p33831d7a3781be5f5414152d42bfabcf0@epcas2p3.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Hyesoo Yu <hyesoo.yu@samsung.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-buf: support to walk the list of dmabuf
	for debug
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

TGV0J3Mgc3VwcG9ydCBkZWJ1Z2dpbmcgZnVuY3Rpb24gdG8gc2hvdyBleHBvcnRlcgpkZXRhaWwg
aW5mb3JtYXRpb24uIFRoZSBleHBvcnRlciBkb24ndCBuZWVkIHRvIG1hbmFnZQp0aGUgbGlzdHMg
Zm9yIGRlYnVnZ2luZyBiZWNhdXNlIGFsbCBkbWFidWYgbGlzdCBhcmUKbWFuYWdlZCBvbiBkbWFi
dWYgZnJhbWV3b3JrLgoKVGhhdCBzdXBwb3J0cyB0byB3YWxrIHRoZSBkbWFidWYgbGlzdCBhbmQg
c2hvdyB0aGUKZGV0YWlsZWQgaW5mb3JtYXRpb24gZm9yIGV4cG9ydGVyIGJ5IHBhc3NlZCBmdW5j
dGlvbgppbXBsZW1lbnRlZCBmcm9tIGV4cG9ydGVyLgoKVGhhdCBoZWxwcyB0byBzaG93IGV4cG9y
dGVyIGRldGFpbCBpbmZvcm1hdGlvbi4KRm9yIGV4YW1wbGUsIElPTiBtYXkgc2hvdyB0aGUgYnVm
ZmVyIGZsYWcsIGhlYXAgbmFtZSwKb3IgdGhlIG5hbWUgb2YgcHJvY2VzcyB0byByZXF1ZXN0IGFs
bG9jYXRpb24uCgpDaGFuZ2UtSWQ6IEk2NzBmMDRkZGE0YTA4NzAwODFlMWIwZmQ5NmI5MTg1YjQ4
YjlkZDE1ClNpZ25lZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29tPgot
LS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAzMCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgMiArKwogMiBmaWxlcyBjaGFu
Z2VkLCAzMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggMDFjZTEyNWY4ZThkLi4wMDJi
ZDNhYzYzNmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMTI1NCw2ICsxMjU0LDM2IEBAIHZvaWQgZG1hX2J1
Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgdm9pZCAqdmFkZHIpCiB9CiBFWFBPUlRf
U1lNQk9MX0dQTChkbWFfYnVmX3Z1bm1hcCk7CiAKK2ludCBkbWFfYnVmX2V4cF9zaG93KHN0cnVj
dCBzZXFfZmlsZSAqcywKKwkJICAgICBpbnQgKCppdCkoc3RydWN0IHNlcV9maWxlICpzLCBzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmKSkKK3sKKwlpbnQgcmV0OworCXN0cnVjdCBkbWFfYnVmICpidWZf
b2JqOworCisJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZkYl9saXN0LmxvY2spOwor
CWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGJ1Zl9vYmos
ICZkYl9saXN0LmhlYWQsIGxpc3Rfbm9kZSkgeworCQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVw
dGlibGUoJmJ1Zl9vYmotPmxvY2spOworCQlpZiAocmV0KSB7CisJCQlzZXFfcHV0cyhzLAorCQkJ
CSAiXHRFUlJPUiBsb2NraW5nIGJ1ZmZlciBvYmplY3Q6IHNraXBwaW5nXG4iKTsKKwkJCWNvbnRp
bnVlOworCQl9CisKKwkJcmV0ID0gaXQocywgYnVmX29iaik7CisJCW11dGV4X3VubG9jaygmYnVm
X29iai0+bG9jayk7CisJCWlmIChyZXQpCisJCQlicmVhazsKKwl9CisJbXV0ZXhfdW5sb2NrKCZk
Yl9saXN0LmxvY2spOworCisJcmV0dXJuIDA7CisKK30KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9i
dWZfZXhwX3Nob3cpOworCiAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTCiBzdGF0aWMgaW50IGRtYV9i
dWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKIHsKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgK
aW5kZXggYWIwYzE1NmFiZWU2Li5iNWMwYTEwYjRlYjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCkBAIC01MDIsNCArNTAy
LDYgQEAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJlYV9z
dHJ1Y3QgKiwKIAkJIHVuc2lnbmVkIGxvbmcpOwogdm9pZCAqZG1hX2J1Zl92bWFwKHN0cnVjdCBk
bWFfYnVmICopOwogdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqLCB2b2lkICp2
YWRkcik7CitpbnQgZG1hX2J1Zl9leHBfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsCisJCSAgICAg
aW50ICgqaXQpKHN0cnVjdCBzZXFfZmlsZSAqcywgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikpOwog
I2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8KLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
