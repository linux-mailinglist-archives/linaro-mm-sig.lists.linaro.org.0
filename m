Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 796BA2D7E15
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 19:31:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 986D16670C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 18:31:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 89D386671C; Fri, 11 Dec 2020 18:31:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA24666714;
	Fri, 11 Dec 2020 18:30:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 504666670C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 18:30:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 415D466714; Fri, 11 Dec 2020 18:30:38 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by lists.linaro.org (Postfix) with ESMTPS id 2C8926670C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 18:30:37 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id p14so220961qke.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 10:30:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xK6pOr6PCBHPT0IldAlBcc/VgyJoh7ibqnbLWD1qV3c=;
 b=QGos5R8j6cdVQe11JtCxhXBo99CnunNTV70Pzt6YErYfTsiyCayuarIl8lpVr+AcC+
 rdxWOSZs2MzXw+EFJWZQ4NBqtQWOL+yfs4s0ieB9MU2fZE6CQCYU0nX8NxNvwY7M44Uk
 8KanyHUpUB9ypYFA5bwRXPv+i3phGfII6V9/teDDav3BMRSiLl4s320+zP6qFXity/D3
 8Z0vZTaxlC55LacMX1dHKj2Z4gY++6DACcWGW8n1Q11n+mbNBQp0CDWXPwrQMEiHEq30
 T0J1FuWRoBFcBW5W5SgRe4j+w/XjmpfGVe95HaOHWhWcKL6O5AcCO0mbQAzKMonjylZg
 //3g==
X-Gm-Message-State: AOAM530Tsi6X9pqt0W4JsofPsvLa4kgGRMkwQv1A8knGW6ITz3e4gGb8
 ocJfHI9nZzPkFs+LSzuXHLxq2YnYiypRxsyPKYB7eA==
X-Google-Smtp-Source: ABdhPJz+nCt5NuwdZbJMUctDs5yg5lEDGEziwYC1c4gIvxpitHyQfvw+1B/C4Mm+p0uklfOgNdoEmH3hEJ3stN3rcpo=
X-Received: by 2002:a05:620a:95d:: with SMTP id
 w29mr17301713qkw.147.1607711436505; 
 Fri, 11 Dec 2020 10:30:36 -0800 (PST)
MIME-Version: 1.0
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com> <20201210102727.GE401619@phenom.ffwll.local>
 <X9H+3AP1q39aMxeb@kroah.com> <f95ee5dc-62f8-4870-11e4-3513dc8382ef@amd.com>
 <CA+wgaPPtoz_JSAwsVVpFGLrcrO8-tAGD+gdrsWmBA3jpidigzQ@mail.gmail.com>
 <e854d168-9299-7326-743e-874882d8073f@amd.com>
In-Reply-To: <e854d168-9299-7326-743e-874882d8073f@amd.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 11 Dec 2020 10:30:00 -0800
Message-ID: <CA+wgaPM2v=+j3bpTdDGkfm+qrizW=q1qnTP9yAVGRu7_4Lf6-w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 Suren Baghdasaryan <surenb@google.com>,
 Android Kernel Team <kernel-team@android.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: Add the capability to expose
	DMA-BUF stats in sysfs
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

VGhhbmsgeW91IENocmlzdGlhbiEKCk9uIEZyaSwgRGVjIDExLCAyMDIwIGF0IDEyOjAzIEFNIENo
cmlzdGlhbiBLw7ZuaWcKPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAx
MC4xMi4yMCB1bSAyMzo0MSBzY2hyaWViIEhyaWR5YSBWYWxzYXJhanU6Cj4gPiBUaGFua3MgYWdh
aW4gZm9yIHRoZSByZXZpZXdzIQo+ID4KPiA+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0IDM6MDMg
QU0gQ2hyaXN0aWFuIEvDtm5pZwo+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6
Cj4gPj4gQW0gMTAuMTIuMjAgdW0gMTE6NTYgc2NocmllYiBHcmVnIEtIOgo+ID4+PiBPbiBUaHUs
IERlYyAxMCwgMjAyMCBhdCAxMToyNzoyN0FNICswMTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+
ID4+Pj4gT24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTE6MTA6NDVBTSArMDEwMCwgR3JlZyBLSCB3
cm90ZToKPiA+Pj4+PiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMDo1ODo1MEFNICswMTAwLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4+Pj4+PiBJbiBnZW5lcmFsIGEgZ29vZCBpZGVhLCBi
dXQgSSBoYXZlIGEgZmV3IGNvbmNlcm4vY29tbWVudHMgaGVyZS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4g
QW0gMTAuMTIuMjAgdW0gMDU6NDMgc2NocmllYiBIcmlkeWEgVmFsc2FyYWp1Ogo+ID4+Pj4+Pj4g
VGhpcyBwYXRjaCBhbGxvd3Mgc3RhdGlzdGljcyB0byBiZSBlbmFibGVkIGZvciBlYWNoIERNQS1C
VUYgaW4KPiA+Pj4+Pj4+IHN5c2ZzIGJ5IGVuYWJsaW5nIHRoZSBjb25maWcgQ09ORklHX0RNQUJV
Rl9TWVNGU19TVEFUUy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBUaGUgZm9sbG93aW5nIHN0YXRzIHdp
bGwgYmUgZXhwb3NlZCBieSB0aGUgaW50ZXJmYWNlOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IC9zeXMv
a2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9leHBvcnRlcl9uYW1lCj4gPj4+Pj4+PiAvc3lz
L2tlcm5lbC9kbWFidWYvPGlub2RlX251bWJlcj4vc2l6ZQo+ID4+Pj4+Pj4gL3N5cy9rZXJuZWwv
ZG1hYnVmLzxpbm9kZV9udW1iZXI+L2Rldl9tYXBfaW5mbwo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFRo
ZSBpbm9kZV9udW1iZXIgaXMgdW5pcXVlIGZvciBlYWNoIERNQS1CVUYgYW5kIHdhcyBhZGRlZCBl
YXJsaWVyIFsxXQo+ID4+Pj4+Pj4gaW4gb3JkZXIgdG8gYWxsb3cgdXNlcnNwYWNlIHRvIHRyYWNr
IERNQS1CVUYgdXNhZ2UgYWNyb3NzIGRpZmZlcmVudAo+ID4+Pj4+Pj4gcHJvY2Vzc2VzLgo+ID4+
Pj4+Pj4KPiA+Pj4+Pj4+IEN1cnJlbnRseSwgdGhpcyBpbmZvcm1hdGlvbiBpcyBleHBvc2VkIGlu
Cj4gPj4+Pj4+PiAvc3lzL2tlcm5lbC9kZWJ1Zy9kbWFfYnVmL2J1ZmluZm8uCj4gPj4+Pj4+PiBI
b3dldmVyLCBzaW5jZSBkZWJ1Z2ZzIGlzIGNvbnNpZGVyZWQgdW5zYWZlIHRvIGJlIG1vdW50ZWQg
aW4gcHJvZHVjdGlvbiwKPiA+Pj4+Pj4+IGl0IGlzIGJlaW5nIGR1cGxpY2F0ZWQgaW4gc3lzZnMu
Cj4gPj4+Pj4+IE1obSwgdGhpcyBtYWtlcyBpdCBwYXJ0IG9mIHRoZSBVQVBJLiBXaGF0IGlzIHRo
ZSBqdXN0aWZpY2F0aW9uIGZvciB0aGlzPwo+ID4+Pj4+Pgo+ID4+Pj4+PiBJbiBvdGhlciB3b3Jk
cyBkbyB3ZSByZWFsbHkgbmVlZCB0aG9zZSBkZWJ1ZyBpbmZvcm1hdGlvbiBpbiBhIHByb2R1Y3Rp
b24KPiA+Pj4+Pj4gZW52aXJvbm1lbnQ/Cj4gPj4+Pj4gUHJvZHVjdGlvbiBlbnZpcm9ubWVudHMg
c2VlbSB0byB3YW50IHRvIGtub3cgd2hvIGlzIHVzaW5nIHVwIG1lbW9yeSA6KQo+ID4+Pj4gVGhp
cyBvbmx5IHNob3dzIHNoYXJlZCBtZW1vcnksIHNvIGl0IGRvZXMgc21lbGwgYSBsb3QgbGlrZSAk
c3BlY2lmaWNfaXNzdWUKPiA+Pj4+IGFuZCB3ZSdyZSBkZXNpZ25pbmcgYSBuYXJyb3cgc29sdXRp
b24gZm9yIHRoYXQgYW5kIHRoZW4gaGF2ZSB0byBjYXJyeSBpdAo+ID4+Pj4gZm9yZXZlci4KPiA+
Pj4gSSB0aGluayB0aGUgImlzc3VlIiBpcyB0aGF0IHRoaXMgd2FzIGEgZmVhdHVyZSBmcm9tIGlv
biB0aGF0IHBlb3BsZQo+ID4+PiAibWlzc2VkIiBpbiB0aGUgZG1hYnVmIG1vdmUuICBUYWtpbmcg
YXdheSB0aGUgYWJpbGl0eSB0byBzZWUgd2hhdCBraW5kCj4gPj4+IG9mIGFsbG9jYXRpb25zIHdl
cmUgYmVpbmcgbWFkZSBkaWRuJ3QgbWFrZSBhIGxvdCBvZiBkZWJ1Z2dpbmcgdG9vbHMKPiA+Pj4g
aGFwcHkgOigKPiA+PiBZZWFoLCB0aGF0IGlzIGNlcnRhaW5seSBhIHZlcnkgdmFsaWQgY29uY2Vy
bi4KPiA+Pgo+ID4+PiBCdXQgSHJpZHlhIGtub3dzIG1vcmUsIHNoZSdzIGJlZW4gZGVhbGluZyB3
aXRoIHRoZSB0cmFuc2l0aW9uIGZvciBhIGxvbmcKPiA+Pj4gdGltZSBub3cuCj4gPiBDdXJyZW50
bHksIHRlbGVtZXRyeSB0b29scyBjYXB0dXJlIHRoaXMgaW5mb3JtYXRpb24oYWxvbmcgd2l0aCBv
dGhlcgo+ID4gbWVtb3J5IG1ldHJpY3MpIHBlcmlvZGljYWxseSBhcyB3ZWxsIGFzIG9uIGltcG9y
dGFudCBldmVudHMgbGlrZSBhCj4gPiBmb3JlZ3JvdW5kIGFwcCBraWxsICh3aGljaCBtaWdodCBo
YXZlIGJlZW4gdHJpZ2dlcmVkIGJ5IGFuIExNSykuIFdlCj4gPiB3b3VsZCBhbHNvIGxpa2UgdG8g
Z2V0IGEgc25hcHNob3Qgb2YgdGhlIHN5c3RlbSBtZW1vcnkgdXNhZ2Ugb24gb3RoZXIKPiA+IGV2
ZW50cyBzdWNoIGFzIE9PTSBraWxscyBhbmQgQU5Scy4KPgo+IFRoYXQgdXNlcnNwYWNlIHRvb2xz
IGFyZSBnb2luZyB0byB1c2UgdGhvc2UgZmlsZXMgZGlyZWN0bHkgaXMgdGhlCj4ganVzdGlmaWNh
dGlvbiB5b3UgbmVlZCBmb3IgdGhlIHN0YWJsZSBVQVBJIHByb3ZpZGVkIGJ5IHN5c2ZzLgo+Cj4g
T3RoZXJ3aXNlIGRlYnVnZnMgd291bGQgYmUgdGhlIHdheSB0byBnbyBldmVuIHdoZW4gdGhhdCBp
cyBvZnRlbiBkaXNhYmxlZC4KPgo+IFBsZWFzZSBjaGFuZ2UgdGhlIGNvbW1pdCBtZXNzYWdlIHRv
IHJlZmxlY3QgdGhhdC4KCgpTb3VuZHMgZ29vZCwgSSB3aWxsIG1ha2Ugc3VyZSB0byBpbmNsdWRl
IGl0IGluIHRoZSBjb21taXQgbWVzc2FnZSBvZgp0aGUgbmV4dCB2ZXJzaW9uLgoKCj4KPiA+Pj4+
IEUuZy4gd2h5IGlzIHRoZSBsaXN0IG9mIGF0dGFjaG1lbnRzIG5vdCBhIHN5c2ZzIGxpbms/IFRo
YXQncyBob3cgd2UKPiA+Pj4+IHVzdWFsbHkgZXhwb3NlIHN0cnVjdCBkZXZpY2UgKiBwb2ludGVy
cyBpbiBzeXNmcyB0byB1c2Vyc3BhY2UsIG5vdCBhcyBhCj4gPj4+PiBsaXN0IG9mIHRoaW5ncy4K
PiA+Pj4gVGhlc2UgYXJlbid0IHN0cnVjdCBkZXZpY2VzLCBzbyBJIGRvbid0IHVuZGVyc3RhbmQg
dGhlIG9iamVjdGlvbiBoZXJlLgo+ID4+PiBXaGVyZSBlbHNlIGNvdWxkIHRoZXNlIGdvIGluIHN5
c2ZzPwo+ID4+IFN1cmUgdGhleSBhcmUhIEp1c3QgdGFrZSBhIGxvb2sgYXQgYW4gYXR0YWNobWVu
dDoKPiA+Pgo+ID4+IHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgewo+ID4+ICAgICAgICAgICAg
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKPiA+PiAgICAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRl
djsKPiA+Pgo+ID4+IFRoaXMgaXMgdGhlIHN0cnVjdCBkZXZpY2Ugd2hpY2ggaXMgaW1wb3J0aW5n
IHRoZSBidWZmZXIgYW5kIHRoZSBwYXRjaCBpbgo+ID4+IGRpc2N1c3Npb24gaXMganVzdCBwcmlu
dGluZyB0aGUgbmFtZSBvZiB0aGlzIGRldmljZSBpbnRvIHN5c2ZzLgo+ID4gSSBhY3R1YWxseSBk
aWQgbm90IGtub3cgdGhhdCB0aGlzIGlzIG5vdCBvayB0byBkby4gSSB3aWxsIGNoYW5nZSBpdCBp
bgo+ID4gdGhlIG5leHQgdmVyc2lvbiBvZiB0aGUgcGF0Y2ggdG8gYmUgc3lzZnMgbGlua3MgaW5z
dGVhZC4KPgo+IFRoYW5rcywgeW91IG5lZWQgdG8gcmVzdHJ1Y3R1cmUgdGhpcyBwYXRjaCBhIGJp
dC4gQnV0IEkgYWdyZWUgd2l0aAo+IERhbmllbCB0aGF0IGxpbmtzIHRvIHRoZSBkZXZpY2VzIHdo
aWNoIGFyZSBhdHRhY2hlZCBhcmUgbW9yZSBhcHByb3ByaWF0ZS4KPgo+IEknbSBqdXN0IG5vdCBz
dXJlIGhvdyB3ZSB3YW50IHRvIHJlcHJlc2VudCB0aGUgbWFwIGNvdW50IGZvciBlYWNoCj4gYXR0
YWNobWVudCB0aGVuLCBwcm9iYWJseSBiZXN0IHRvIGhhdmUgdGhhdCBhcyBzZXBhcmF0ZSBmaWxl
IGFzIHdlbGwuCgoKWWVzLCBJIGNhbiBhZGQgdGhlIG1hcCBjb3VudCBhcyBhIHNlcGFyYXRlIGZp
bGUuIFRoYW5rcyBhZ2FpbiEKClJlZ2FyZHMsCkhyaWR5YQoKCj4KPiBSZWdhcmRzLAo+IENocmlz
dGlhbi4KPgo+IC0tCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJl
Y2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBrZXJuZWwtdGVhbSt1bnN1
YnNjcmliZUBhbmRyb2lkLmNvbS4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
