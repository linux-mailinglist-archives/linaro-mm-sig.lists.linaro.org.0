Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C551B14F751
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Feb 2020 10:03:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1AF5607B2
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Feb 2020 09:03:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CF8A3607FB; Sat,  1 Feb 2020 09:03:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MAILING_LIST_MULTI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87BDC60919;
	Sat,  1 Feb 2020 09:03:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A84DC607B2
 for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Feb 2020 09:03:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9668B60919; Sat,  1 Feb 2020 09:03:06 +0000 (UTC)
Received: from r3-23.sinamail.sina.com.cn (r3-23.sinamail.sina.com.cn
 [202.108.3.23]) by lists.linaro.org (Postfix) with SMTP id 7E140607B2
 for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Feb 2020 09:03:04 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([124.64.3.106])
 by sina.com with ESMTP
 id 5E353EC1000026FF; Sat, 1 Feb 2020 17:02:59 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 46649154919310
From: Hillf Danton <hdanton@sina.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Sat,  1 Feb 2020 17:02:47 +0800
Message-Id: <20200201090247.10928-1-hdanton@sina.com>
In-Reply-To: <20200201043209.13412-1-hdanton@sina.com>
References: <20200201043209.13412-1-hdanton@sina.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robdclark@chromium.org, daniel@ffwll.ch, davem@davemloft.net,
 airlied@linux.ie, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, eric@anholt.net, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org,
 syzbot <syzbot+0dc4444774d419e916c8@syzkaller.appspotmail.com>,
 alexander.deucher@amd.com, linux-media@vger.kernel.org,
 christian.koenig@amd.com, emil.velikov@collabora.com
Subject: Re: [Linaro-mm-sig] KASAN: use-after-free Read in
	vgem_gem_dumb_create
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

Ck9uIFNhdCwgMSBGZWIgMjAyMCAwOToxNzo1NyArMDMwMCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+
IE9uIFNhdCwgRmViIDAxLCAyMDIwIGF0IDEyOjMyOjA5UE0gKzA4MDAsIEhpbGxmIERhbnRvbiB3
cm90ZToKPiA+Cj4gPiBSZWxlYXNlIG9iaiBpbiBlcnJvciBwYXRoLgo+ID4gCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
dmdlbS92Z2VtX2Rydi5jCj4gPiBAQCAtMTk2LDEwICsxOTYsMTAgQEAgc3RhdGljIHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqdmdlbV9nZW1fYwo+ID4gIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7Cj4g
PiAgCj4gPiAgCXJldCA9IGRybV9nZW1faGFuZGxlX2NyZWF0ZShmaWxlLCAmb2JqLT5iYXNlLCBo
YW5kbGUpOwo+ID4gLQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQoJm9iai0+YmFzZSk7Cj4g
PiAtCWlmIChyZXQpCj4gPiArCWlmIChyZXQpIHsKPiA+ICsJCWRybV9nZW1fb2JqZWN0X3B1dF91
bmxvY2tlZCgmb2JqLT5iYXNlKTsKPiA+ICAJCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gPiAtCj4g
PiArCX0KPiA+ICAJcmV0dXJuICZvYmotPmJhc2U7Cj4gCj4gT2ggeWVhaC4gIEl0J3Mgd2VpcmQg
dGhhdCB3ZSBuZXZlciBub3RpY2VkIHRoZSBzdWNjZXNzIHBhdGggd2FzIGJyb2tlbi4KPiBJdCdz
IGJlZW4gdGhhdCB3YXkgZm9yIHRocmVlIHllYXJzIGFuZCBubyBvbmUgbm90aWNlZCBhdCBhbGwu
ICBWZXJ5Cj4gc3RyYW5nZS4KPiAKPiBBbnl3YXksIGl0IGFscmVhZHkgZ2V0cyBmcmVlZCBvbiBl
cnJvciBpbiBkcm1fZ2VtX2hhbmRsZV9jcmVhdGUoKSBzbwo+IHdlIHNob3VsZCBqdXN0IGRlbGV0
ZSB0aGUgZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKCkgaGVyZSBpdCBsb29rcwo+IGxpa2Uu
CgpHb29kIGNhdGNoLCBEYW4gOlAKV291bGQgeW91IHBsZWFzZSBwb3N0IGEgcGF0Y2ggc29tZXRp
bWUgY29udmVuaWVudCBuZXh0IHdlZWs/CgpUaGFua3MKSGlsbGYKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
