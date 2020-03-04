Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B373917958A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 17:42:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE3AB65FCC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 16:42:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C30AA65FCB; Wed,  4 Mar 2020 16:42:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A6A165FCA;
	Wed,  4 Mar 2020 16:41:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA45465FC6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 16:41:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B039165FCA; Wed,  4 Mar 2020 16:41:41 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by lists.linaro.org (Postfix) with ESMTPS id 43D2D65FC6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 16:41:40 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id y3so3034803edj.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Mar 2020 08:41:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ySiSOnqcuA6nNk8c0jQCBZCPf0dSfXosbzJcm8d2dZY=;
 b=le5Hq0Ll6j/anwm/9ZE8zWDv5ZQPvTVymQpn2+37H1GJPVGAfpAaN5I6ndXaKID2Z2
 O/aW4xA4gxX20d/4UQE9sL1KoH8hu69QLLlqaKoiq6E8J1wGEzur1Hj4AzJJrWMdcl3C
 DgZpMnshZJ9sgUay0lrlp8nytvAbaSqlJQv/BYP1a21COhuyso+XhXNupWR0eFK0Du4C
 /t787AuE6dCEXVjw/P5SY4qGTrUkEGTmkjlFTrO4fUjeuRqURjbuPzMOvKdY/AlBQxL/
 NmwxukHPR9BcHKWfIM3GZWikuYjDwKulKpxt++rMj1+n9hnN48FEPjjiABrEMk2SaRIS
 37Rg==
X-Gm-Message-State: ANhLgQ28hSrOCXDf3rbtqvqD8aW8o1eLMYYy0B3ns+o5vyWVpsXa7fgq
 RAXhVgvOVsc8K0bIyPMlGnV1W8aD7Cds3uj4D/wbjQ==
X-Google-Smtp-Source: ADFU+vt2Ptn+2fuU7L5gaFz0uxQGB+VvuZ4/Df2PK08OKaAQBCL6bfkBEoaOGk9rhadFD/j7RFC6f9y4mgdpei2KZt8=
X-Received: by 2002:aa7:c983:: with SMTP id c3mr3441099edt.98.1583340099330;
 Wed, 04 Mar 2020 08:41:39 -0800 (PST)
MIME-Version: 1.0
References: <20200225235856.975366-1-jason@jlekstrand.net>
 <8066d8b2-dd6a-10ef-a7bb-2c18a0661912@amd.com>
 <20200226100523.GQ2363188@phenom.ffwll.local>
 <CAOFGe94O66HL212aXqhi9tdYqw---Xm-fwNSV4pxHyPmpSGpbg@mail.gmail.com>
 <CAP+8YyEUz29fXDW5kO_0ZG6c849=TuFWCK8ynT3LuM+Tn+rMzw@mail.gmail.com>
 <810a26e7-4294-a615-b7ee-18148ac70641@amd.com>
 <CAOFGe96namyeQXTvdrduM+=wkJuoWWx34CxcsJHS3fcCaKDadw@mail.gmail.com>
 <21aeacc0-f3ae-c5dd-66df-4d2f3d73f73e@amd.com>
 <CAOFGe95Gx=kX=sxwhx1FYmXQuPtGAKwt2V5YodQBwJXujE3WwA@mail.gmail.com>
In-Reply-To: <CAOFGe95Gx=kX=sxwhx1FYmXQuPtGAKwt2V5YodQBwJXujE3WwA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 4 Mar 2020 10:41:28 -0600
Message-ID: <CAOFGe97XSxgzCViOH=2+B2_d5P3vGifKmvAw-JrzRQbbRMRbcg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, Daniel Stone <daniels@collabora.com>,
 James Jones <jajones@nvidia.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 LKML <linux-kernel@vger.kernel.org>, Greg Hackmann <ghackmann@google.com>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Kristian_H=C3=B8gsberg?= <hoegsberg@google.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, Jesse Hall <jessehall@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Add an API for importing
	and exporting sync files
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

T24gV2VkLCBNYXIgNCwgMjAyMCBhdCAxMDoyNyBBTSBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxl
a3N0cmFuZC5uZXQ+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgNCwgMjAyMCBhdCAyOjM0IEFNIENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
QW0gMDMuMDMuMjAgdW0gMjA6MTAgc2NocmllYiBKYXNvbiBFa3N0cmFuZDoKPiA+ID4gT24gVGh1
LCBGZWIgMjcsIDIwMjAgYXQgMjoyOCBBTSBDaHJpc3RpYW4gS8O2bmlnCj4gPiA+IDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4gPj4gW1NOSVBdCj4gPiA+Pj4gSG93ZXZlciwg
SSdtIG5vdCBzdXJlIHdoYXQgdGhlIGJlc3Qgd2F5IGlzIHRvIGRvIGdhcmJhZ2UgY29sbGVjdGlv
biBvbgo+ID4gPj4+IHRoYXQgc28gdGhhdCB3ZSBkb24ndCBnZXQgYW4gaW1wb3NzaWJseSBsaXN0
IG9mIGZlbmNlIGFycmF5cy4KPiA+ID4+IEV4YWN0bHkgeWVzLiBUaGF0J3MgYWxzbyB0aGUgcmVh
c29uIHdoeSB0aGUgZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5lciBJCj4gPiA+PiBjYW1lIHVwIHdp
dGggZm9yIHRoZSBzeW5jIHRpbWVsaW5lIHN0dWZmIGhhcyBzdWNoIGEgcmF0aGVyIHNvcGhpc3Rp
Y2F0ZWQKPiA+ID4+IGdhcmJhZ2UgY29sbGVjdGlvbi4KPiA+ID4+Cj4gPiA+PiBXaGVuIHNvbWUg
b2YgdGhlIGluY2x1ZGVkIGZlbmNlcyBzaWduYWwgeW91IG5lZWQgdG8gZnJlZSB1cCB0aGUKPiA+
ID4+IGFycmF5L2NoYWluIGFuZCBtYWtlIHN1cmUgdGhhdCB0aGUgbWVtb3J5IGZvciB0aGUgY29u
dGFpbmVyIGNhbiBiZSByZXVzZWQuCj4gPiA+IEN1cnJlbnRseSAoYXMgb2YgdjIpLCBJJ20gdXNp
bmcgZG1hX2ZlbmNlX2FycmF5IGFuZCBiZWluZyBjYXJlZnVsIHRvCj4gPiA+IG5vdCBib3RoZXIg
Y29uc3RydWN0aW5nIG9uZSBpZiB0aGVyZSdzIG9ubHkgb25lIGZlbmNlIGluIHBsYXkuICBJcwo+
ID4gPiB0aGlzIGluc3VmZmljaWVudD8gIElmIHNvLCBtYXliZSB3ZSBzaG91bGQgY29uc2lkZXIg
aW1wcm92aW5nCj4gPiA+IGRtYV9mZW5jZV9hcnJheS4KPiA+Cj4gPiBUaGF0IHN0aWxsIHdvbid0
IHdvcmsgY29ycmVjdGx5IGluIGFsbCBjYXNlcy4gU2VlIHRoZSBwcm9ibGVtIGlzIG5vdAo+ID4g
b25seSBvcHRpbWl6YXRpb24sIGJ1dCBhbHNvIGF2b2lkaW5nIHNpdHVhdGlvbnMgd2hlcmUgdXNl
cnNwYWNlIGNhbgo+ID4gYWJ1c2UgdGhlIGludGVyZmFjZSB0byBkbyBuYXN0eSB0aGluZ3MuCj4g
Pgo+ID4gRm9yIGV4YW1wbGUgaWYgdXNlcnNwYWNlIGp1c3QgY2FsbHMgdGhhdCBmdW5jdGlvbiBp
biBhIGxvb3AgeW91IGNhbgo+ID4gY3JlYXRlIGEgbG9uZyBjaGFpbiBvZiBkbWFfZmVuY2VfYXJy
YXkgb2JqZWN0cy4KPiA+Cj4gPiBJZiB0aGF0IGNoYWluIGlzIHRoZW4gc3VkZGVubHkgcmVsZWFz
ZWQgdGhlIHJlY3Vyc2l2ZSBkcm9wcGluZyBvZgo+ID4gcmVmZXJlbmNlcyBjYW4gb3ZlcndyaXRl
IHRoZSBrZXJuZWwgc3RhY2suCj4gPgo+ID4gRm9yIHJlZmVyZW5jZSBzZWUgd2hhdCBkYW5jZSBp
cyBuZWNlc3NhcnkgaW4gdGhlIGRtYV9mZW5jZV9jaGFpbl9yZWxlYXNlCj4gPiBmdW5jdGlvbiB0
byBhdm9pZCB0aGF0Ogo+ID4gPiAgICAgICAgIC8qIE1hbnVhbGx5IHVubGluayB0aGUgY2hhaW4g
YXMgbXVjaCBhcyBwb3NzaWJsZSB0byBhdm9pZAo+ID4gPiByZWN1cnNpb24KPiA+ID4gICAgICAg
ICAgKiBhbmQgcG90ZW50aWFsIHN0YWNrIG92ZXJmbG93Lgo+ID4gPiAgICAgICAgICAqLwo+ID4g
PiAgICAgICAgIHdoaWxlICgocHJldiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY2hhaW4t
PnByZXYsIHRydWUpKSkgewo+ID4gLi4uLgo+ID4KPiA+IEl0IHRvb2sgbWUgcXVpdGUgYSB3aGls
ZSB0byBmaWd1cmUgb3V0IGhvdyB0byBkbyB0aGlzIHdpdGhvdXQgY2F1c2luZwo+ID4gaXNzdWVz
LiBCdXQgSSBkb24ndCBzZWUgaG93IHRoaXMgd291bGQgYmUgcG9zc2libGUgZm9yIGRtYV9mZW5j
ZV9hcnJheS4KPgo+IEFoLCBJIHNlZSB0aGUgaXNzdWUgbm93ISAgSXQgaGFkbid0IGV2ZW4gb2Nj
dXJyZWQgdG8gbWUgdGhhdCB1c2Vyc3BhY2UKPiBjb3VsZCB1c2UgdGhpcyB0byBidWlsZCB1cCBh
biBpbmZpbml0ZSByZWN1cnNpb24gY2hhaW4uICBUaGF0J3MgbmFzdHkhCj4gIEknbGwgZ2l2ZSB0
aGlzIHNvbWUgbW9yZSB0aG91Z2h0IGFuZCBzZWUgaWYgY2FuIGNvbWUgdXAgd2l0aAo+IHNvbWV0
aGluZyBjbGV2ZXIuCj4KPiBIZXJlJ3Mgb25lIHRob3VnaHQ6ICBXZSBjb3VsZCBtYWtlIGRtYV9m
ZW5jZV9hcnJheSBhdXRvbWF0aWNhbGx5Cj4gY29sbGFwc2UgYW55IGFycmF5cyBpdCByZWZlcmVu
Y2VzIGFuZCBpbnN0ZWFkIGRpcmVjdGx5IHJlZmVyZW5jZSB0aGVpcgo+IGZlbmNlcy4gIFRoaXMg
d2F5LCBubyBtYXR0ZXIgaG93IG11Y2ggdGhlIGNsaWVudCBjaGFpbnMgdGhpbmdzLCB0aGV5Cj4g
d2lsbCBuZXZlciBnZXQgbW9yZSB0aGFuIG9uZSBkbWFfZmVuY2VfYXJyYXkuICBPZiBjb3Vyc2Us
IHRoZQo+IGRpZmZpY3VsdHkgaGVyZSAoYW5zd2VyaW5nIG15IG93biBxdWVzdGlvbikgY29tZXMg
aWYgdGhleSBwaW5nLXBvbmcKPiBiYWNrLWFuZC1mb3J0aCBiZXR3ZWVuIHNvbWV0aGluZyB3aGlj
aCBjb25zdHJ1Y3RzIGEgZG1hX2ZlbmNlX2FycmF5Cj4gYW5kIHNvbWV0aGluZyB3aGljaCBjb25z
dHJ1Y3RzIGEgZG1hX2ZlbmNlX2NoYWluIHRvIGdldAo+IGFycmF5LW9mLWNoYWluLW9mLWFycmF5
LW9mLWNoYWluLW9mLS4uLiAgTW9yZSB0aG91Z2h0IG5lZWRlZC4KCkFuc3dlcmluZyBteSBvd24g
cXVlc3Rpb25zIGFnYWluLi4uICBJIHRoaW5rIHRoZQphcnJheS1vZi1jaGFpbi1vZi1hcnJheSBj
YXNlIGlzIGFsc28gc29sdmFibGUuCgpGb3IgYXJyYXktb2YtY2hhaW4sIHdlIGNhbiBzaW1wbHkg
YWRkIGFsbCB1bnNpZ25hbGVkIGRtYV9mZW5jZXMgaW4gdGhlCmNoYWluIHRvIHRoZSBhcnJheS4g
IFRoZSBhcnJheSB3b24ndCBzaWduYWwgdW50aWwgYWxsIG9mIHRoZW0gaGF2ZQp3aGljaCBpcyBl
eGFjdGx5IHRoZSBzYW1lIGJlaGF2aW9yIGFzIGlmIHdlJ2QgYWRkZWQgdGhlIGNoYWluIGl0c2Vs
Zi4KCkZvciBjaGFpbi1vZi1hcnJheSwgd2UgY2FuIGFkZCBhbGwgdW5zaWduYWxlZCBkbWFfZmVu
Y2VzIGluIHRoZSBhcnJheQp0byB0aGUgc2FtZSBwb2ludCBpbiB0aGUgY2hhaW4uICBUaGVyZSBt
YXkgYmUgc29tZSBmaWRkbGluZyB3aXRoIHRoZQpjaGFpbiBudW1iZXJpbmcgcmVxdWlyZWQgaGVy
ZSBidXQgSSB0aGluayB3ZSBjYW4gZ2V0IGl0IHNvIHRoZSBjaGFpbgp3b24ndCBzaWduYWwgdW50
aWwgZXZlcnl0aGluZyBpbiB0aGUgYXJyYXkgaGFzIHNpZ25hbGVkIGFuZCB3ZSBnZXQgdGhlCnNh
bWUgYmVoYXZpb3IgYXMgaWYgd2UnZCBhZGRlZCB0aGUgZG1hX2ZlbmNlX2FycmF5IHRvIHRoZSBj
aGFpbi4KCkluIGJvdGggY2FzZXMsIHdlIGVuZCB1cCB3aXRoIGVpdGhlciBhIHNpbmdsZSBhcnJh
eSBvciBhIHNpbmdsZSBhbmQKZGVzdHJ1Y3Rpb24gZG9lc24ndCByZXF1aXJlIHJlY3Vyc2lvbi4g
IFRob3VnaHRzPwoKLS1KYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
