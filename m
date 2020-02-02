Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D826E14FD38
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  2 Feb 2020 14:17:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF784606B3
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  2 Feb 2020 13:17:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ACFCF60723; Sun,  2 Feb 2020 13:17:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 434BC607A4;
	Sun,  2 Feb 2020 13:17:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D11E8606B3
 for <linaro-mm-sig@lists.linaro.org>; Sun,  2 Feb 2020 13:17:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BA9EB607A4; Sun,  2 Feb 2020 13:17:13 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id B4105606B3
 for <linaro-mm-sig@lists.linaro.org>; Sun,  2 Feb 2020 13:17:12 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id j20so2623580otq.3
 for <linaro-mm-sig@lists.linaro.org>; Sun, 02 Feb 2020 05:17:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+JexwpZ7uOUAzO/bZPt69XOsxgXW5ev8PRFd02TcEk8=;
 b=o5AANDCFFXtyUGX45fRsdUWryHtwqIdWDU1efphCD7xn6shjQQ1155PvkxV/f2sxCu
 TtmHxJuxPr+9HNUJ84k6dRVqVSlw77vW/Dx6gr9Oca+YgMglGqBxHiJsf5qN0LhPi7eh
 V1h9HI24H8G7490Sjk2zlgG+uStofmslrNTUY69ss2PFERgbjyeLVIF7F4QnxxOXwedY
 KZxOzQZJ+zEIwEKo3Sva/VgLS0E58Rj8dEfLhsVxVqYYss7EWPqQOkagpBJmvTh0OT65
 WJQloWKqMoRBCmJDcoxyaA4+bCRIaLtTC7rK0KA76UdsqHoHiRSzsEQ8kQBAkoZ3QmXM
 vfWA==
X-Gm-Message-State: APjAAAWo89osv1+0l0jHm/ryGPBH8t9O4qJ4jpZoCk6hXR7ZeYsQrnQB
 x+pRj2lkW7WY2RqTJIWZibgwO/Rb5vskGcaUxSCKRA==
X-Google-Smtp-Source: APXvYqyhJpSqQ8at/IdzLDOBcr/4/JYswhhc71+cJLzlo49FIW6k84QX0OWoAy1QjBLh4SW+3pmM+ASFc5nUW+iAsSg=
X-Received: by 2002:a9d:7696:: with SMTP id j22mr14988663otl.188.1580649432010; 
 Sun, 02 Feb 2020 05:17:12 -0800 (PST)
MIME-Version: 1.0
References: <20200201043209.13412-1-hdanton@sina.com>
 <20200201090247.10928-1-hdanton@sina.com>
 <20200201162537.GK1778@kadam>
In-Reply-To: <20200201162537.GK1778@kadam>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Sun, 2 Feb 2020 14:17:00 +0100
Message-ID: <CAKMK7uGHuvyrn=WghhHBk2miW__ctVHeDTDKz+XVJ9yLjpS97Q@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>, Hillf Danton <hdanton@sina.com>,
 David Miller <davem@davemloft.net>, Dave Airlie <airlied@linux.ie>,
 netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "Anholt, Eric" <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 syzbot <syzbot+0dc4444774d419e916c8@syzkaller.appspotmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Emil Velikov <emil.velikov@collabora.com>
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

T24gU2F0LCBGZWIgMSwgMjAyMCBhdCA1OjI2IFBNIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50
ZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIEZlYiAwMSwgMjAyMCBhdCAwNTowMjo0
N1BNICswODAwLCBIaWxsZiBEYW50b24gd3JvdGU6Cj4gPgo+ID4gT24gU2F0LCAxIEZlYiAyMDIw
IDA5OjE3OjU3ICswMzAwIERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4gPiA+IE9uIFNhdCwgRmViIDAx
LCAyMDIwIGF0IDEyOjMyOjA5UE0gKzA4MDAsIEhpbGxmIERhbnRvbiB3cm90ZToKPiA+ID4gPgo+
ID4gPiA+IFJlbGVhc2Ugb2JqIGluIGVycm9yIHBhdGguCj4gPiA+ID4KPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3ZnZW0vdmdlbV9kcnYuYwo+ID4gPiA+IEBAIC0xOTYsMTAgKzE5NiwxMCBAQCBzdGF0aWMg
c3RydWN0IGRybV9nZW1fb2JqZWN0ICp2Z2VtX2dlbV9jCj4gPiA+ID4gICAgICAgICAgIHJldHVy
biBFUlJfQ0FTVChvYmopOwo+ID4gPiA+Cj4gPiA+ID4gICByZXQgPSBkcm1fZ2VtX2hhbmRsZV9j
cmVhdGUoZmlsZSwgJm9iai0+YmFzZSwgaGFuZGxlKTsKPiA+ID4gPiAtIGRybV9nZW1fb2JqZWN0
X3B1dF91bmxvY2tlZCgmb2JqLT5iYXNlKTsKPiA+ID4gPiAtIGlmIChyZXQpCj4gPiA+ID4gKyBp
ZiAocmV0KSB7Cj4gPiA+ID4gKyAgICAgICAgIGRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgm
b2JqLT5iYXNlKTsKPiA+ID4gPiAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsKPiA+ID4g
PiAtCj4gPiA+ID4gKyB9Cj4gPiA+ID4gICByZXR1cm4gJm9iai0+YmFzZTsKPiA+ID4KPiA+ID4g
T2ggeWVhaC4gIEl0J3Mgd2VpcmQgdGhhdCB3ZSBuZXZlciBub3RpY2VkIHRoZSBzdWNjZXNzIHBh
dGggd2FzIGJyb2tlbi4KPiA+ID4gSXQncyBiZWVuIHRoYXQgd2F5IGZvciB0aHJlZSB5ZWFycyBh
bmQgbm8gb25lIG5vdGljZWQgYXQgYWxsLiAgVmVyeQo+ID4gPiBzdHJhbmdlLgo+ID4gPgo+ID4g
PiBBbnl3YXksIGl0IGFscmVhZHkgZ2V0cyBmcmVlZCBvbiBlcnJvciBpbiBkcm1fZ2VtX2hhbmRs
ZV9jcmVhdGUoKSBzbwo+ID4gPiB3ZSBzaG91bGQganVzdCBkZWxldGUgdGhlIGRybV9nZW1fb2Jq
ZWN0X3B1dF91bmxvY2tlZCgpIGhlcmUgaXQgbG9va3MKPiA+ID4gbGlrZS4KClRoZXJlJ3MgdHdv
IHJlZmNvdW50cyBoZXJlLCBvbmUgaXMgdGhlIGhhbmRsZV9jb3VudCwgYW5kIHRoZSBvdGhlciBp
cwp0aGUgdW5kZXJseWluZyBvYmplY3QgcmVmY291bnQuIEkgdGhpbmsgdGhlIGNvZGUgaXMgY29y
cmVjdCwgZXhjZXB0IGlmCnlvdSByYWNlIHdpdGggYSAybmQgdGhyZWFkIHdoaWNoIGRlc3Ryb3lz
IHRoZSBvYmplY3QgKHRocm91Z2ggdGhlCmhhbmRsZSkgd2hpbGUgd2Ugc3RpbGwgdHJ5IHRvIHJl
YWQgZ2VtX29iamVjdC0+c2l6ZSBpbiB0aGUgY2FsbGVyIG9mCnRoaXMuIFNvIGNvcnJlY3QgZml4
IChJIHRoaW5rIGF0IGxlYXN0KSBpcyB0byBzaHVmZmxlIHRoYXQgdGVtcG9yYXJ5CnJlZmVyZW5j
ZSBvbiB0aGUgb2JqZWN0IChub3QgdGhlIGhhbmRsZSkgd2UgaG9sZCB3aGlsZSBjb25zdHJ1Y3Rp
bmcgaXQKYXJvdW5kIGEgYml0LCBzbyB0aGVyZSdzIG5vIHVzZS1hZnRlciBmcmVlIGFueW1vcmUg
aW4gdGhlIGNhc2Ugb2YgYQpyYWNlLiBJJ20gdHlwaW5nIGEgcGF0Y2ggZm9yIHRoaXMuCgpDaGVl
cnMsIERhbmllbAoKPiA+IEdvb2QgY2F0Y2gsIERhbiA6UAo+ID4gV291bGQgeW91IHBsZWFzZSBw
b3N0IGEgcGF0Y2ggc29tZXRpbWUgY29udmVuaWVudCBuZXh0IHdlZWs/Cj4KPiBTdXJlLiAgV2ls
bCBkby4KPgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4
IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
