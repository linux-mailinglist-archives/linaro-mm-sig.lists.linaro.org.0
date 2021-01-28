Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0F7307E81
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:55:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F9236171B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 18:55:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 01E1066760; Thu, 28 Jan 2021 18:55:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD25C6674C;
	Thu, 28 Jan 2021 18:55:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05FA36171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:55:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E901B6674C; Thu, 28 Jan 2021 18:55:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by lists.linaro.org (Postfix) with ESMTPS id 15BE66171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:55:14 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::7650]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5CRl-00049O-7L; Thu, 28 Jan 2021 18:55:13 +0000
To: Kalesh Singh <kaleshsingh@google.com>
References: <20210128182432.2216573-1-kaleshsingh@google.com>
 <20210128182432.2216573-3-kaleshsingh@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <94bd3e83-698f-ea80-f3ff-a69fc3d39217@infradead.org>
Date: Thu, 28 Jan 2021 10:55:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210128182432.2216573-3-kaleshsingh@google.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, jeffv@google.com,
 kernel-team@android.com, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, keescook@chromium.org, jannh@google.com,
 linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org,
 Bernd Edlinger <bernd.edlinger@hotmail.de>, surenb@google.com,
 Vlastimil Babka <vbabka@suse.cz>, Alexey Gladkov <gladkov.alexey@gmail.com>,
 linux-kernel@vger.kernel.org, minchan@kernel.org,
 Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dmabuf: Add dmabuf inode no to
	fdinfo
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

T24gMS8yOC8yMSAxMDoyNCBBTSwgS2FsZXNoIFNpbmdoIHdyb3RlOgo+IFRoZSBkbWFidWYgaW5v
ZGUgbnVtYmVyIGFsbG93cyB1c2Vyc3BhY2UgdG8gdW5pcXVlbHkgaWRlbnRpZnkgdGhlIGJ1ZmZl
cgo+IGFuZCBhdm9pZHMgYSBkZXBlbmRlbmN5IG9uIC9wcm9jLzxwaWQ+L2ZkLyogd2hlbiBhY2Nv
dW50aW5nIHBlci1wcm9jZXNzCj4gRE1BIGJ1ZmZlciBzaXplcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBLYWxlc2ggU2luZ2ggPGthbGVzaHNpbmdoQGdvb2dsZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jCj4gaW5kZXggOWFkNjM5N2FhYTk3Li5kODY5MDk5ZWRlODMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMKPiBAQCAtNDE0LDYgKzQxNCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hv
d19mZGluZm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiAgewo+ICAJ
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVfZGF0YTsKPiAgCj4gKwlzZXFf
cHJpbnRmKG0sICJkbWFidWZfaW5vZGVfbm86XHQlbHVcbiIsIGZpbGVfaW5vZGUoZmlsZSktPmlf
aW5vKTsKPiAgCXNlcV9wcmludGYobSwgInNpemU6XHQlenVcbiIsIGRtYWJ1Zi0+c2l6ZSk7Cj4g
IAkvKiBEb24ndCBjb3VudCB0aGUgdGVtcG9yYXJ5IHJlZmVyZW5jZSB0YWtlbiBpbnNpZGUgcHJv
Y2ZzIHNlcV9zaG93ICovCj4gIAlzZXFfcHJpbnRmKG0sICJjb3VudDpcdCVsZFxuIiwgZmlsZV9j
b3VudChkbWFidWYtPmZpbGUpIC0gMSk7Cj4gCgpbcmVzZW5kaW5nOyBob3BlZnVsbHkgdGhlIGZp
cnN0IG9uZSBkaWRuJ3QgZ28gYW55d2hlcmVdCgoKSGksCgpUaGUgc3ViamVjdCBpcyBhIGxpdHRs
ZSBjb25mdXNpbmcuCkl0IHNlZW1zIHRvIHNheSB0aGF0IHRoZSBkbWFidWYgaW5vZGUgbm8gaXMg
YmVpbmcgYWRkZWQgdG8gL3Byb2MvPHBpZD4vZmRpbmZvLApidXQgbG9va2luZyBhdCB0aGUgY29k
ZSwgaXQgaXMgYmVpbmcgYWRkZWQgdG8gL3Byb2MvZG1hYnVmIChvciAvcHJvYy88cGlkPi9kbWFi
dWYpLgoKUGxlYXNlIGNsYXJpZnkuCgphbmQgaXMgdGhlIC9wcm9jIGZpbGUgZm9ybWF0IGRvY3Vt
ZW50ZWQgYW55d2hlcmU/CgoKdGhhbmtzLgoKLS0gCn5SYW5keQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
