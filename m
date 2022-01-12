Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9ED48BC39
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Jan 2022 02:12:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46F74401B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Jan 2022 01:12:26 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by lists.linaro.org (Postfix) with ESMTPS id E6E3440179
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jan 2022 01:12:22 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id h14so1926519ybe.12
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Jan 2022 17:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xjTRFSqJYxYJ0HsDKiZ54zl6ugx3DS6HwynO3TCtbWQ=;
        b=TVIjjtwN9h32YujM+MZEy4iUZ5h7ltDdZbZiPSD1vzeeFpazkfVIyITMKHz4pL194g
         ZmX9bNwdqz74RtIQ6tduewnJo8IZH1wqIeU24iy+nzkA/ky1H05wcUm5Nb15LCky1y8O
         zXYTzFtT/Z1Z7PIPWSCHiRUA9VtwffvzU7Y22P4+LXH1k7qfN2JA+cr6Q2HeD/i3NTEq
         xs+iCTqMbv3YfOi4xjlUrBDZtDOuhp8scfG0C2XDKV8qfb1NePWklVHI+K96tHKY/9Gu
         TWvIDMhK9rYbiqwfCOOSqdTVm5jnY/J4PotjEooSCHQN6VQcE9uDltv0X0nwFzUtyNt+
         3a5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xjTRFSqJYxYJ0HsDKiZ54zl6ugx3DS6HwynO3TCtbWQ=;
        b=o0p9UPFaOZo47t0rmVAkdjzxE2Rn3upa8lCTYe6VqXerJbrBhd7IFz1hsnkFP9/acn
         7b3Dc4Uq+CnYTylZ0+dWe/OwTAKzdTCSF5R+XxdIZcAkfvl7l4M8+guO7XYUakyurtEO
         i71VHpAfqdwFwVjldWGkT0Bmuu/whfsB7LuRqt5+OgH+G44XmDZjCyUDUplEljharckU
         gvqSa2z0AUJzeGt8k3tP3ckIHZT1uzbx8orN6iMShtZCj3WDlD3CWUlciOGWiMvJBrlc
         EyED/CoCKlBcCj8V6/BTVaTjj6iYPiPrGjyiWB3jIOco9KtU76jSbNNYxyfusWDgR8yD
         bPNw==
X-Gm-Message-State: AOAM530l5IehdZpRis7+8BuXEPqd5Ip4gmqeYL4QM7H4YI3r6ORiBx0f
	3FvIGWPhOt6IXZfJLgthIzcadau3RrnBuEV4K3LpRw==
X-Google-Smtp-Source: ABdhPJzZvRCw98B6Izrbwi0vXW5WEsiulf6Jw5949i1tVCJKs6+A1LXAxYLEsQ5qpXuRxCROgZN5vKK18jern8XWoKo=
X-Received: by 2002:a25:c691:: with SMTP id k139mr9527616ybf.327.1641949942208;
 Tue, 11 Jan 2022 17:12:22 -0800 (PST)
MIME-Version: 1.0
References: <20220104235148.21320-1-hridya@google.com> <49b29081-42df-ffcd-8fea-bd819499ff1b@amd.com>
 <CA+wgaPMWT0s0KNo_wM7jU+bH626OAVtn77f7_WX=E1wyU8aBzg@mail.gmail.com>
 <3a29914d-0c7b-1f10-49cb-dbc1cc6e52b0@amd.com> <CA+wgaPOmRTAuXiSRRmj-s=3d2W6ny=EMFtroOShYKrp0u+xF+g@mail.gmail.com>
 <CA+wgaPO81R+NckRt0nzZazxs9fqSC_V_wyChU=kcMqJ01WxXNw@mail.gmail.com>
 <5a6bd742-10ca-2e88-afaa-3744731c2c0c@amd.com> <CA+wgaPPdCMPi1t+ObyO4+cqsk7Xx3E=K5BOPM37=QAviQDAfmw@mail.gmail.com>
 <CAKMK7uGRUrP+0PcY-yxTweb_K_QacHJchgPoa0K9K_kwGO+K3g@mail.gmail.com>
 <934ac18c-d53e-beeb-48c1-015a5936e713@amd.com> <Yd1nJqmHXULnccNF@kroah.com> <3610ecd0-03c7-2cae-8f36-f8fd555757b0@amd.com>
In-Reply-To: <3610ecd0-03c7-2cae-8f36-f8fd555757b0@amd.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Tue, 11 Jan 2022 17:11:45 -0800
Message-ID: <CA+wgaPP9DDSuOjJjK6F7XF_=UpP=Li+3-3Pa9Nr-c2qEUr=RBQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: 6PH66XZEQENWFXBRJZ7XWAUFPUAAD4AC
X-Message-ID-Hash: 6PH66XZEQENWFXBRJZ7XWAUFPUAAD4AC
X-MailFrom: hridya@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, john.stultz@linaro.org, surenb@google.com, kaleshsingh@google.com, tjmercier@google.com, keescook@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Move sysfs work out of DMA-BUF export/release path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6PH66XZEQENWFXBRJZ7XWAUFPUAAD4AC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKYW4gMTEsIDIwMjIgYXQgMzo0MyBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4NCj4gQW0gMTEuMDEuMjIgdW0gMTI6MTYg
c2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46DQo+ID4gT24gVHVlLCBKYW4gMTEsIDIwMjIgYXQg
MTE6NTg6MDdBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPj4+PiBUaGlzIGlz
IGFsc28gbm90IGEgcHJvYmxlbSBkdWUgdG8gdGhlIGhpZ2ggbnVtYmVyIG9mIERNQS1CVUYNCj4g
Pj4+PiBleHBvcnRzIGR1cmluZyBsYXVuY2ggdGltZSwgYXMgZXZlbiBhIHNpbmdsZSBleHBvcnQg
Y2FuIGJlIGRlbGF5ZWQgZm9yDQo+ID4+Pj4gYW4gdW5wcmVkaWN0YWJsZSBhbW91bnQgb2YgdGlt
ZS4gV2UgY2Fubm90IGVsaW1pbmF0ZSBETUEtQlVGIGV4cG9ydHMNCj4gPj4+PiBjb21wbGV0ZWx5
IGR1cmluZyBhcHAtbGF1bmNoZXMgYW5kIHdlIGFyZSB1bmZvcnR1bmF0ZWx5IHNlZWluZyByZXBv
cnRzDQo+ID4+Pj4gb2YgdGhlIGV4cG9ydGluZyBwcm9jZXNzIG9jY2FzaW9uYWxseSBzbGVlcGlu
ZyBsb25nIGVub3VnaCB0byBjYXVzZQ0KPiA+Pj4+IHVzZXItdmlzaWJsZSBqYW5raW5lc3MgOigN
Cj4gPj4+Pg0KPiA+Pj4+IFdlIGFsc28gbG9va2VkIGF0IHdoZXRoZXIgYW55IG9wdGltaXphdGlv
bnMgYXJlIHBvc3NpYmxlIGZyb20gdGhlDQo+ID4+Pj4ga2VybmZzIGltcGxlbWVudGF0aW9uIHNp
ZGVbMV0gYnV0IHRoZSBzZW1hcGhvcmUgaXMgdXNlZCBxdWl0ZSBleHRlbnNpdmVseQ0KPiA+Pj4+
IGFuZCBpdCBsb29rcyBsaWtlIHRoZSBiZXN0IHdheSBmb3J3YXJkIHdvdWxkIGJlIHRvIHJlbW92
ZSBzeXNmcw0KPiA+Pj4+IGNyZWF0aW9uL3RlYXJkb3duIGZyb20gdGhlIERNQS1CVUYgZXhwb3J0
L3JlbGVhc2UgcGF0aCBhbHRvZ2V0aGVyLiBXZQ0KPiA+Pj4+IGhhdmUgc29tZSBpZGVhcyBvbiBo
b3cgd2UgY2FuIHJlZHVjZSB0aGUgY29kZS1jb21wbGV4aXR5IGluIHRoZQ0KPiA+Pj4+IGN1cnJl
bnQgcGF0Y2guIElmIHdlIG1hbmFnZSB0bw0KPiA+Pj4+IHNpbXBsaWZ5IGl0IGNvbnNpZGVyYWJs
eSwgd291bGQgdGhlIGFwcHJvYWNoIG9mIG9mZmxvYWRpbmcgc3lzZnMNCj4gPj4+PiBjcmVhdGlv
biBhbmQgdGVhcmRvd24gaW50byBhIHNlcGFyYXRlIHRocmVhZCBiZSBhY2NlcHRhYmxlIENocmlz
dGlhbj8NCj4gPj4gQXQgYmFyZSBtaW5pbXVtIEkgc3VnZ2VzdCB0byB1c2UgYSB3b3JrX3N0cnVj
dCBpbnN0ZWFkIG9mIHJlLWludmVudGluZyB0aGF0DQo+ID4+IHdpdGgga3RocmVhZC4NCj4gPj4N
Cj4gPj4gQW5kIHRoZW4gb25seSBwdXQgdGhlIGV4cG9ydGluZyBvZiBidWZmZXJzIGludG8gdGhl
IGJhY2tncm91bmQgYW5kIG5vdCB0aGUNCj4gPj4gdGVhcmRvd24uDQo+ID4+DQo+ID4+Pj4gVGhh
bmsgeW91IGZvciB0aGUgZ3VpZGFuY2UhDQo+ID4+PiBPbmUgd29ycnkgSSBoYXZlIGhlcmUgd2l0
aCBkb2luZyB0aGlzIGFzeW5jIHRoYXQgbm93IHVzZXJzcGFjZSBtaWdodA0KPiA+Pj4gaGF2ZSBh
IGRtYS1idWYsIGJ1dCB0aGUgc3lzZnMgZW50cnkgZG9lcyBub3QgeWV0IGV4aXN0LCBvciB0aGUg
ZG1hLWJ1Zg0KPiA+Pj4gaXMgZ29uZSwgYnV0IHRoZSBzeXNmcyBlbnRyeSBzdGlsbCBleGlzdHMu
IFRoYXQncyBhIGJpdCBhd2t3YXJkIHdydA0KPiA+Pj4gc2VtYW50aWNzLg0KDQoNClRoYW5rIHlv
dSBhbGwgZm9yIHlvdXIgdGhvdWdodHMgYW5kIGd1aWRhbmNlLiBZb3UgYXJlIGNvcnJlY3QgdGhh
dCB3ZQ0Kd2lsbCBiZSB0cmFkaW5nIGFjY3VyYWN5IGZvciBwZXJmb3JtYW5jZSBoZXJlLiBPbmUg
cHJlY2VkZW5jZSB3ZSBjb3VsZA0KZmluZCB3YXMgaW4gdGhlIGNhc2Ugb2YgUlNTIGFjY291bnRp
bmcgd2hlcmUgU1BMSVRfUlNTX0NPVU5USU5HIGNhdXNlZA0KdGhlIGFjY291bnRpbmcgdG8gaGF2
ZSBsZXNzIG92ZXJoZWFkIGJ1dCBhbHNvIG1hZGUgaXQgbGVzcyBhY2N1cmF0ZS4NCklmIHlvdSB3
b3VsZCBwcmVmZXIgdGhhdCBpdCBub3QgYmUgdGhlIGRlZmF1bHQgY2FzZSwgd2UgY2FuIG1ha2Ug
aXQNCmNvbmZpZ3VyYWJsZSBieSBwdXR0aW5nIGl0IGJlaGluZCBhIGNvbmZpZyBpbnN0ZWFkLg0K
DQoNCj4gPj4+DQo+ID4+PiBBbHNvIEknbSBwcmV0dHkgc3VyZSB0aGF0IGlmIHdlIGNhbiBoaXQg
dGhpcywgdGhlbiBvdGhlciBzdWJzeXN0ZW1zDQo+ID4+PiB1c2luZyBrZXJuZnMgaGF2ZSBzaW1p
bGFyIHByb2JsZW1zLCBzbyB0cnlpbmcgdG8gZml4IHRoaXMgaW4ga2VybmZzDQo+ID4+PiB3aXRo
IHNsaWdodGx5IG1vcmUgZmluZS1ncmFpbmVkIGxvY2tpbmcgc291bmRzIGxpa2UgYSBtdWNoIG1v
cmUgc29saWQNCj4gPj4+IGFwcHJvYWNoLiBUaGUgbGlua2VkIHBhdGNoIHRhbGtzIGFib3V0IGhv
dyB0aGUgYmlnIGRlbGF5cyBoYXBwZW4gZHVlDQo+ID4+PiB0byBkaXJlY3QgcmVjbGFpbSwgYW5k
IHRoYXQgbWlnaHQgYmUgbGltaXRlZCB0byBzcGVjaWZpYyBjb2RlIHBhdGhzDQo+ID4+PiB0aGF0
IHdlIG5lZWQgdG8gbG9vayBhdD8gQXMtaXMgdGhpcyBmZWVscyBhIGJpdCBtdWNoIGxpa2UgcGFw
ZXJpbmcNCj4gPj4+IG92ZXIga2VybmZzIGlzc3VlcyBpbiBoYWNraXNoIHdheXMgaW4gc3lzZnMg
dXNlcnMsIGluc3RlYWQgb2YgdGFja2xpbmcNCj4gPj4+IHRoZSBwcm9ibGVtIGF0IGl0cyByb290
Lg0KPiA+PiBXaGljaCBpcyBleGFjdGx5IG15IGZlZWxpbmcgYXMgd2VsbCwgeWVzLg0KPiA+IE1v
cmUgYW5kIG1vcmUgcGVvcGxlIGFyZSB1c2luZyBzeXNmcy9rZXJuZnMgbm93IGZvciB0aGluZ3Mg
dGhhdCBpdCB3YXMNCj4gPiBuZXZlciBkZXNpZ25lZCBmb3IgKGkuZS4gaGlnaC1zcGVlZCBzdGF0
aXN0aWMgZ2F0aGVyaW5nKS4gIFRoYXQncyBub3QNCj4gPiB0aGUgZmF1bHQgb2Yga2VybmZzLCBp
dCdzIHRoZSBmYXVsdCBvZiBwZW9wbGUgdGhpbmtpbmcgaXQgY2FuIGJlIHVzZWQNCj4gPiBmb3Ig
c3R1ZmYgbGlrZSB0aGF0IDopDQo+DQo+IEknbSBzdGFydGluZyB0byBnZXQgdGhlIGZlZWxpbmcg
dGhhdCB3ZSBzaG91bGQgbWF5YmUgaGF2ZSBxdWVzdGlvbmVkDQo+IGFkZGluZyBzeXNmcyBmaWxl
cyBmb3IgZWFjaCBleHBvcnRlZCBETUEtYnVmIGEgYml0IG1vcmUuIEFueXdheSwgdG8gbGF0ZQ0K
PiBmb3IgdGhhdC4gV2UgaGF2ZSB0byBsaXZlIHdpdGggdGhlIGNvbnNlcXVlbmNlcy4NCj4NCj4g
PiBCdXQgZGVsYXlzIGxpa2UgdGhpcyBpcyBvZGQsIHRlYXJpbmcgZG93biBzeXNmcyBhdHRyaWJ1
dGVzIHNob3VsZA0KPiA+IG5vcm1hbGx5IF9uZXZlcl8gYmUgYSBmYXN0LXBhdGggdGhhdCBtYXR0
ZXJzIHRvIHN5c3RlbSB0aHJvdWdocHV0LiAgU28NCj4gPiBvZmZsb2FkaW5nIGl0IHRvIGEgd29y
a3F1ZXVlIG1ha2VzIHNlbnNlIGFzIHRoZSBhdHRyaWJ1dGVzIGhlcmUgYXJlIGZvcg0KPiA+IG9i
amVjdHMgdGhhdCBhcmUgb24gdGhlIGZhc3QtcGF0aC4NCj4NCj4gVGhhdCdzIHdoYXQgaXMgcHV6
emxpbmcgbWUgYXMgd2VsbC4gQXMgZmFyIGFzIEkgdW5kZXJzdG9vZCBIcmlkeWENCj4gdGVhcmlu
ZyBkb3duIHRoaW5ncyBpcyBub3QgdGhlIHByb2JsZW0sIGJlY2F1c2UgZHVyaW5nIHRlYXJkb3du
IHdlDQo+IHVzdWFsbHkgaGF2ZSBhIGR5aW5nIHRhc2sgd2hlcmUgaXQncyB1c3VhbGx5IG5vdCBt
dWNoIG9mIGEgcHJvYmxlbSBpZg0KPiB0aGUgY29ycHNlIGlzIGFyb3VuZCBmb3IgYW5vdGhlciBm
ZXcgbWlsbGlzZWNvbmRzIHVudGlsIGV2ZXJ5dGhpbmcgaXMNCj4gY2xlYW5lZCB1cC4NCg0KDQpX
ZSBoYXZlIHNlZW4gaW5zdGFuY2VzIHdoZXJlIHRoZSBsYXN0IHJlZmVyZW5jZSB0byB0aGUgYnVm
ZmVyIGlzIG5vdA0KZHJvcHBlZCBieSB0aGUgZHlpbmcgcHJvY2VzcyBidXQgYnkgU3VyZmFjZWZs
aW5nZXJbMV0uDQoNCg0KPg0KPiBUaGUgaXNzdWUgaGFwcGVucyBkdXJpbmcgY3JlYXRpb24gb2Yg
dGhlIHN5c2ZzIGF0dHJpYnV0ZSBhbmQgdGhhdCdzDQo+IGV4dHJlbWVseSBvZGQgYmVjYXVzZSBp
ZiB0aGlzIHdhaXRzIGZvciByZWNsYWltIHRoZW4gZHJpdmVycyB3aWxsDQo+IGNlcnRhaW5seSB3
YWl0IGZvciByZWNsYWltIGFzIHdlbGwuIFNlZSB3ZSBuZWVkIGEgZmV3IGJ5dGVzIGZvciB0aGUN
Cj4gc3lzZnMgYXR0cmlidXRlLCBidXQgZHJpdmVycyB1c3VhbGx5IG5lZWQgYSBmZXcgbWVnYWJ5
dGVzIGZvciB0aGUNCj4gRE1BLWJ1ZiBiYWNraW5nIHN0b3JlIGJlZm9yZSB0aGV5IGNhbiBldmVu
IGV4cG9ydCB0aGUgRE1BLWJ1Zi4NCg0KDQpXZSBoYXZlIGJlZW4gd29ya2luZyBvZmYgb2YgdHJh
Y2VzIGNvbGxlY3RlZCBmcm9tIHRoZSBkZXZpY2VzIG9mIGVuZA0KdXNlcnMgdG8gYW5hbHl6ZSB0
aGUgaXNzdWUgYW5kIGN1cnJlbnRseSBkb24ndCBoYXZlIHN1ZmZpY2llbnQNCmluZm9ybWF0aW9u
IHRvIHVuZGVyc3RhbmQgd2h5IGV4YWN0bHkgZGlyZWN0IHJlY2xhaW0gYWZmZWN0cyBzeXNmcyB0
aGUNCndheSB3ZSBhcmUgc2VlaW5nIGl0IG9uIHRoZSB0cmFjZXMuIFdlIGFyZSBhY3RpdmVseSB0
cnlpbmcgdG8NCnJlcHJvZHVjZSB0aGUgaXNzdWUgY29uc2lzdGVudGx5IHRvIHBlcmZvcm0gbW9y
ZSBleHBlcmltZW50cyB0bw0KdW5kZXJzdGFuZCBpdC4gVGhlIERNQS1CVUYgc3lzdGVtIGhlYXAg
b24gdGhlIEFuZHJvaWQgQ29tbW9uIEtlcm5lbA0Ka2VlcHMgYSBwb29sIG9mIHByZS1hbGxvY2F0
ZWQgcGFnZXMgaW4gcmVzZXJ2ZSBhbmQgd2UgYXJlIGd1ZXNzaW5nDQp0aGF0IGl0IGNvdWxkIHBv
c3NpYmx5IGJlIHRoZSByZWFzb24gd2h5IHdlIGhhdmUgbm90IHNlZW4gc2ltaWxhcg0KaXNzdWVz
IHdpdGggZGlyZWN0IHJlY2xhaW0gZWFybGllci4gV2Ugd2lsbCB1cGRhdGUgdGhlIHRocmVhZCBv
bmNlIHdlDQpoYXZlIG1vcmUgaW5mb3JtYXRpb24uDQoNCldlIGFyZSBhbHNvIHdvcmtpbmcgb24g
YSBsZWFuZXIgdmVyc2lvbiBvZiB0aGUgcGF0Y2ggdGhhdCB1c2VzDQp3b3JrX3N0cnVjdCBpbnN0
ZWFkLg0KDQpSZWdhcmRzLA0KSHJpZHlhDQoNClsxXSA6IGh0dHBzOi8vc291cmNlLmFuZHJvaWQu
Y29tL2RldmljZXMvZ3JhcGhpY3Mvc3VyZmFjZWZsaW5nZXItd2luZG93bWFuYWdlcg0KDQoNCj4N
Cj4gU28gc29tZXRoaW5nIGRvZXNuJ3QgYWRkIHVwIGluIHRoZSByYXRpb25hbCBmb3IgdGhpcyBw
cm9ibGVtLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4NCj4gPiB0aGFua3Ms
DQo+ID4NCj4gPiBncmVnIGstaA0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
