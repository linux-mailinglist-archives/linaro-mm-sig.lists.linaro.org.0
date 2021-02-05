Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C172E310171
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 01:15:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E642C6602F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 00:15:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D67A966758; Fri,  5 Feb 2021 00:15:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB77C66754;
	Fri,  5 Feb 2021 00:15:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A80EC6186A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 00:15:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 98EC666754; Fri,  5 Feb 2021 00:15:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by lists.linaro.org (Postfix) with ESMTPS id 56CD16186A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 00:15:27 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::aec2]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7omT-0008HR-AH; Fri, 05 Feb 2021 00:15:25 +0000
To: Kalesh Singh <kaleshsingh@google.com>
References: <20210204232854.451676-1-kaleshsingh@google.com>
 <20210204232854.451676-2-kaleshsingh@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <4e71615b-bdc9-bd5f-ffe3-25f50ce5b882@infradead.org>
Date: Thu, 4 Feb 2021 16:15:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210204232854.451676-2-kaleshsingh@google.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, jeffv@google.com,
 kernel-team@android.com, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, keescook@chromium.org, jannh@google.com,
 linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org,
 Bernd Edlinger <bernd.edlinger@hotmail.de>, surenb@google.com,
 Alexey Gladkov <gladkov.alexey@gmail.com>, linux-kernel@vger.kernel.org,
 minchan@kernel.org, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/2] dmabuf: Add dmabuf inode number
	to /proc/*/fdinfo
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

T24gMi80LzIxIDM6MjggUE0sIEthbGVzaCBTaW5naCB3cm90ZToKPiBJZiBhIEZEIHJlZmVycyB0
byBhIERNQSBidWZmZXIgYWRkIHRoZSBETUEgYnVmZmVyIGlub2RlIG51bWJlciB0bwo+IC9wcm9j
LzxwaWQ+L2ZkaW5mby88RkQ+IGFuZCAvcHJvYy88cGlkPi90YXNrLzx0aWQ+L2ZkaW5kby88RkQ+
Lgo+IAo+IFRoZSBkbWFidWYgaW5vZGUgbnVtYmVyIGFsbG93cyB1c2Vyc3BhY2UgdG8gdW5pcXVl
bHkgaWRlbnRpZnkgdGhlIGJ1ZmZlcgo+IGFuZCBhdm9pZHMgYSBkZXBlbmRlbmN5IG9uIC9wcm9j
LzxwaWQ+L2ZkLyogd2hlbiBhY2NvdW50aW5nIHBlci1wcm9jZXNzCj4gRE1BIGJ1ZmZlciBzaXpl
cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLYWxlc2ggU2luZ2ggPGthbGVzaHNpbmdoQGdvb2dsZS5j
b20+Cj4gLS0tCgpIaSwKUGxlYXNlIGRvY3VtZW50IHRoaXMgY2hhbmdlIGluCkRvY3VtZW50YXRp
b24vZmlsZXN5c3RlbXMvcHJvYy5yc3QuCgpUaGFua3MuCgo+IAo+IENoYW5nZXMgaW4gdjI6IAo+
ICAgLSBVcGRhdGUgcGF0Y2ggZGVzY2lwdGlvbgo+IAo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Ywo+IGluZGV4IDlhZDYzOTdhYWE5Ny4uZDg2OTA5OWVkZTgzIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4g
QEAgLTQxNCw2ICs0MTQsNyBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3Nob3dfZmRpbmZvKHN0cnVj
dCBzZXFfZmlsZSAqbSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gIHsKPiAgCXN0cnVjdCBkbWFfYnVm
ICpkbWFidWYgPSBmaWxlLT5wcml2YXRlX2RhdGE7Cj4gIAo+ICsJc2VxX3ByaW50ZihtLCAiZG1h
YnVmX2lub2RlX25vOlx0JWx1XG4iLCBmaWxlX2lub2RlKGZpbGUpLT5pX2lubyk7Cj4gIAlzZXFf
cHJpbnRmKG0sICJzaXplOlx0JXp1XG4iLCBkbWFidWYtPnNpemUpOwo+ICAJLyogRG9uJ3QgY291
bnQgdGhlIHRlbXBvcmFyeSByZWZlcmVuY2UgdGFrZW4gaW5zaWRlIHByb2NmcyBzZXFfc2hvdyAq
Lwo+ICAJc2VxX3ByaW50ZihtLCAiY291bnQ6XHQlbGRcbiIsIGZpbGVfY291bnQoZG1hYnVmLT5m
aWxlKSAtIDEpOwo+IAoKCi0tIAp+UmFuZHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
