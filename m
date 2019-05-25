Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122832DD0
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 12:44:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BEB761613
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2019 10:44:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0C47B6106B; Mon,  3 Jun 2019 10:44:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9384D614E1;
	Mon,  3 Jun 2019 10:43:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 33EFB60E1B
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 01:59:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 113E8610D5; Sat, 25 May 2019 01:59:16 +0000 (UTC)
Received: from mail3-163.sinamail.sina.com.cn (mail3-163.sinamail.sina.com.cn
 [202.108.3.163])
 by lists.linaro.org (Postfix) with SMTP id 4184560E1B
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 May 2019 01:59:14 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([114.253.229.186])
 by sina.com with ESMTP
 id 5CE8A16E00005108; Sat, 25 May 2019 09:59:11 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 736708394874
From: Hillf Danton <hdanton@sina.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat, 25 May 2019 09:59:01 +0800
Message-Id: <20190416183841.1577-4-christian.koenig@amd.com>
In-Reply-To: <20190416183841.1577-1-christian.koenig@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
Archived-At: <https://lore.kernel.org/lkml/20190416183841.1577-4-christian.koenig@amd.com/>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 03 Jun 2019 10:43:16 +0000
Cc: linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 03/12] dma-buf: lock the reservation
	object during (un)map_dma_buf v3
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

Ck9uIFR1ZSwgMTYgQXByIDIwMTkgMjA6Mzg6MzIgKzAyMDAgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPiBAQCAtNjg4LDkgKzY4OSw5IEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBfYXR0
YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gIAlpZiAoYXR0YWNo
LT5zZ3QpCj4gIAkJcmV0dXJuIGF0dGFjaC0+c2d0Owo+ICAKPiAtCXNnX3RhYmxlID0gYXR0YWNo
LT5kbWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOwo+IC0JaWYgKCFz
Z190YWJsZSkKPiAtCQlzZ190YWJsZSA9IEVSUl9QVFIoLUVOT01FTSk7Cj4gKwlyZXNlcnZhdGlv
bl9vYmplY3RfbG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7Cj4gKwlzZ190YWJsZSA9
IGRtYV9idWZfbWFwX2F0dGFjaG1lbnRfbG9ja2VkKGF0dGFjaCwgZGlyZWN0aW9uKTsKPiArCXJl
c2VydmF0aW9uX29iamVjdF91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOwo+ICAKTG9va3Mg
YmV0dGVyIGlmIHNnX3RhYmxlIGlzIGNoZWNrZWQgYWZ0ZXIgbWFwcGluZywgYW5kIGZlZWQgZXJy
b3IgaW5mbwpiYWNrIGluIGNhc2UgdGhlcmUgaXMgYW55dGhpbmcgdW51c3VhbC4KCj4gIAlyZXR1
cm4gc2dfdGFibGU7Cj4gIH0KCkJlc3QgUmVnYXJkcwpIaWxsZgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
