Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C7C17A95A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Mar 2020 16:55:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B74265FC9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Mar 2020 15:55:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5CC8465FC5; Thu,  5 Mar 2020 15:55:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12B1965FB0;
	Thu,  5 Mar 2020 15:54:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DAD86617A4
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Mar 2020 15:54:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CCD9065FB0; Thu,  5 Mar 2020 15:54:30 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by lists.linaro.org (Postfix) with ESMTPS id 3CB37617A4
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Mar 2020 15:54:29 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id h62so7340005edd.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Mar 2020 07:54:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jpgwSkp7XcrOD1X4HMaPrupSeCafE36RfxzoW5P2WRA=;
 b=G/fV232IUjY8ts+s2NAAdFt4TTwp7GqyVOCSdcBR0vMIpFbqArw8+GdxClRm1hs8g5
 eUrWpwB7rc8fsysG1YgTBtieadFhfW2kiHVvvZR4hXR3UreobDgYOA2QFku5c6ZtgQ9M
 3GUwXPYoG58FbJHfz9Uudg7wTBqfuijECStu1DT/NFLgUDnT1kQjp5wPzjcYVa3jDIOC
 NKyZs2uUiaDR0Tc9eUtGVwuTb+dWn9dm9yB6c3F/dPnJF+Ap1t4AK3AaYwQ8PDlG2Oth
 0EeX971kYDSKFjTMcZlm3QqpZoPDkvYkWTvyIls/u63GAyMQ5ZPLGbLSsHV4fma2U695
 m0Wg==
X-Gm-Message-State: ANhLgQ2hZmKENtMCl6UHe9ZpbyE8IDiR57yw0FbZOdxc5CzBaiHl5dzN
 amWLwJj0QzGBGyX2i4ChdyY7Q7HSM222OanToyNLHg==
X-Google-Smtp-Source: ADFU+vtfOlYmMkcz0GZIDO1iKHc1JvcTJQpELewViffLb0TBaaBXcV3kuWUnf2AGZLPIyKSJzHoRuU3LVrFVwcti4F0=
X-Received: by 2002:a05:6402:1655:: with SMTP id
 s21mr9282877edx.324.1583423668000; 
 Thu, 05 Mar 2020 07:54:28 -0800 (PST)
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
 <CAOFGe97XSxgzCViOH=2+B2_d5P3vGifKmvAw-JrzRQbbRMRbcg@mail.gmail.com>
 <6fb8becf-9e6b-f59e-9c22-2b20069241a7@amd.com>
In-Reply-To: <6fb8becf-9e6b-f59e-9c22-2b20069241a7@amd.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 5 Mar 2020 09:54:16 -0600
Message-ID: <CAOFGe94gv9N+6n6oEC2aRtsmy7kBfx1D_R6WLQSGq7-8yUM_OQ@mail.gmail.com>
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

T24gVGh1LCBNYXIgNSwgMjAyMCBhdCA3OjA2IEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAwNC4wMy4yMCB1bSAxNzo0MSBzY2hyaWVi
IEphc29uIEVrc3RyYW5kOgo+ID4gT24gV2VkLCBNYXIgNCwgMjAyMCBhdCAxMDoyNyBBTSBKYXNv
biBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+IHdyb3RlOgo+ID4+IE9uIFdlZCwgTWFy
IDQsIDIwMjAgYXQgMjozNCBBTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOgo+ID4+PiBBbSAwMy4wMy4yMCB1bSAyMDoxMCBzY2hyaWViIEphc29uIEVr
c3RyYW5kOgo+ID4+Pj4gT24gVGh1LCBGZWIgMjcsIDIwMjAgYXQgMjoyOCBBTSBDaHJpc3RpYW4g
S8O2bmlnCj4gPj4+PiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiA+Pj4+IFtT
TklQXQo+ID4+PiBGb3IgcmVmZXJlbmNlIHNlZSB3aGF0IGRhbmNlIGlzIG5lY2Vzc2FyeSBpbiB0
aGUgZG1hX2ZlbmNlX2NoYWluX3JlbGVhc2UKPiA+Pj4gZnVuY3Rpb24gdG8gYXZvaWQgdGhhdDoK
PiA+Pj4+ICAgICAgICAgIC8qIE1hbnVhbGx5IHVubGluayB0aGUgY2hhaW4gYXMgbXVjaCBhcyBw
b3NzaWJsZSB0byBhdm9pZAo+ID4+Pj4gcmVjdXJzaW9uCj4gPj4+PiAgICAgICAgICAgKiBhbmQg
cG90ZW50aWFsIHN0YWNrIG92ZXJmbG93Lgo+ID4+Pj4gICAgICAgICAgICovCj4gPj4+PiAgICAg
ICAgICB3aGlsZSAoKHByZXYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGNoYWluLT5wcmV2
LCB0cnVlKSkpIHsKPiA+Pj4gLi4uLgo+ID4+Pgo+ID4+PiBJdCB0b29rIG1lIHF1aXRlIGEgd2hp
bGUgdG8gZmlndXJlIG91dCBob3cgdG8gZG8gdGhpcyB3aXRob3V0IGNhdXNpbmcKPiA+Pj4gaXNz
dWVzLiBCdXQgSSBkb24ndCBzZWUgaG93IHRoaXMgd291bGQgYmUgcG9zc2libGUgZm9yIGRtYV9m
ZW5jZV9hcnJheS4KPiA+PiBBaCwgSSBzZWUgdGhlIGlzc3VlIG5vdyEgIEl0IGhhZG4ndCBldmVu
IG9jY3VycmVkIHRvIG1lIHRoYXQgdXNlcnNwYWNlCj4gPj4gY291bGQgdXNlIHRoaXMgdG8gYnVp
bGQgdXAgYW4gaW5maW5pdGUgcmVjdXJzaW9uIGNoYWluLiAgVGhhdCdzIG5hc3R5IQo+Cj4gWWVh
aCwgd2hlbiBJIGZpcnN0IHN0dW1ibGVkIG92ZXIgaXQgaXQgd2FzIGxpa2Ugd2h5IHRoZSBoZWNr
IGlzIG15IGNvZGUKPiBjcmFzaGluZyBpbiBhbiBpbnRlcnJ1cHQgaGFuZGxlcj8KPgo+IFJlYWxp
emluZyB0aGF0IHRoaXMgaXMgc3RhY2sgY29ycnVwdGlvbiBiZWNhdXNlIG9mIHRoZSBsb25nIGNo
YWluIHdlCj4gY29uc3RydWN0ZWQgd2FzIHF1aXRlIGFuIGVubGlnaHRlbm1lbnQuCj4KPiBBbmQg
dGhlbiBpdCB0b29rIG1lIGV2ZW4gbG9uZ2VyIHRvIGZpeCBpdCA6KQoKRnVuLi4uLgoKPiA+PiAg
IEknbGwgZ2l2ZSB0aGlzIHNvbWUgbW9yZSB0aG91Z2h0IGFuZCBzZWUgaWYgY2FuIGNvbWUgdXAg
d2l0aAo+ID4+IHNvbWV0aGluZyBjbGV2ZXIuCj4gPj4KPiA+PiBIZXJlJ3Mgb25lIHRob3VnaHQ6
ICBXZSBjb3VsZCBtYWtlIGRtYV9mZW5jZV9hcnJheSBhdXRvbWF0aWNhbGx5Cj4gPj4gY29sbGFw
c2UgYW55IGFycmF5cyBpdCByZWZlcmVuY2VzIGFuZCBpbnN0ZWFkIGRpcmVjdGx5IHJlZmVyZW5j
ZSB0aGVpcgo+ID4+IGZlbmNlcy4gIFRoaXMgd2F5LCBubyBtYXR0ZXIgaG93IG11Y2ggdGhlIGNs
aWVudCBjaGFpbnMgdGhpbmdzLCB0aGV5Cj4gPj4gd2lsbCBuZXZlciBnZXQgbW9yZSB0aGFuIG9u
ZSBkbWFfZmVuY2VfYXJyYXkuICBPZiBjb3Vyc2UsIHRoZQo+ID4+IGRpZmZpY3VsdHkgaGVyZSAo
YW5zd2VyaW5nIG15IG93biBxdWVzdGlvbikgY29tZXMgaWYgdGhleSBwaW5nLXBvbmcKPiA+PiBi
YWNrLWFuZC1mb3J0aCBiZXR3ZWVuIHNvbWV0aGluZyB3aGljaCBjb25zdHJ1Y3RzIGEgZG1hX2Zl
bmNlX2FycmF5Cj4gPj4gYW5kIHNvbWV0aGluZyB3aGljaCBjb25zdHJ1Y3RzIGEgZG1hX2ZlbmNl
X2NoYWluIHRvIGdldAo+ID4+IGFycmF5LW9mLWNoYWluLW9mLWFycmF5LW9mLWNoYWluLW9mLS4u
LiAgTW9yZSB0aG91Z2h0IG5lZWRlZC4KPgo+IENvbmRlbnNpbmcgdGhlIGZlbmNlcyBpbnRvIGEg
bGFyZ2VyIGFycmF5IGNhbiBjZXJ0YWlubHkgd29yaywgeWVzLgo+Cj4gPiBBbnN3ZXJpbmcgbXkg
b3duIHF1ZXN0aW9ucyBhZ2Fpbi4uLiAgSSB0aGluayB0aGUKPiA+IGFycmF5LW9mLWNoYWluLW9m
LWFycmF5IGNhc2UgaXMgYWxzbyBzb2x2YWJsZS4KPiA+Cj4gPiBGb3IgYXJyYXktb2YtY2hhaW4s
IHdlIGNhbiBzaW1wbHkgYWRkIGFsbCB1bnNpZ25hbGVkIGRtYV9mZW5jZXMgaW4gdGhlCj4gPiBj
aGFpbiB0byB0aGUgYXJyYXkuICBUaGUgYXJyYXkgd29uJ3Qgc2lnbmFsIHVudGlsIGFsbCBvZiB0
aGVtIGhhdmUKPiA+IHdoaWNoIGlzIGV4YWN0bHkgdGhlIHNhbWUgYmVoYXZpb3IgYXMgaWYgd2Un
ZCBhZGRlZCB0aGUgY2hhaW4gaXRzZWxmLgo+Cj4gWWVhaCwgdGhhdCBzaG91bGQgd29yay4gUHJv
YmFibHkgYmVzdCB0byBpbXBsZW1lbnQgc29tZXRoaW5nIGxpa2UgYQo+IGN1cnNvciB0byB3YWxr
IGFsbCBmZW5jZXMgaW4gdGhlIGRhdGEgc3RydWN0dXJlLgo+Cj4gPiBGb3IgY2hhaW4tb2YtYXJy
YXksIHdlIGNhbiBhZGQgYWxsIHVuc2lnbmFsZWQgZG1hX2ZlbmNlcyBpbiB0aGUgYXJyYXkKPiA+
IHRvIHRoZSBzYW1lIHBvaW50IGluIHRoZSBjaGFpbi4gIFRoZXJlIG1heSBiZSBzb21lIGZpZGRs
aW5nIHdpdGggdGhlCj4gPiBjaGFpbiBudW1iZXJpbmcgcmVxdWlyZWQgaGVyZSBidXQgSSB0aGlu
ayB3ZSBjYW4gZ2V0IGl0IHNvIHRoZSBjaGFpbgo+ID4gd29uJ3Qgc2lnbmFsIHVudGlsIGV2ZXJ5
dGhpbmcgaW4gdGhlIGFycmF5IGhhcyBzaWduYWxlZCBhbmQgd2UgZ2V0IHRoZQo+ID4gc2FtZSBi
ZWhhdmlvciBhcyBpZiB3ZSdkIGFkZGVkIHRoZSBkbWFfZmVuY2VfYXJyYXkgdG8gdGhlIGNoYWlu
Lgo+Cj4gV2VsbCBhcyBmYXIgYXMgSSBjYW4gc2VlIHRoaXMgd29uJ3Qgd29yayBiZWNhdXNlIGl0
IHdvdWxkIGJyZWFrIHRoZQo+IHNlbWFudGljcyBvZiB0aGUgdGltZWxpbmUgc3luYy4KCkknbSBu
b3QgMTAwJSBjb252aW5jZWQgaXQgaGFzIHRvLiAgV2UgYWxyZWFkeSBoYXZlIHN1cHBvcnQgZm9y
IHRoZQpzZXFubyByZWdyZXNzaW5nIGFuZCB3ZSBlbnN1cmUgdGhhdCB3ZSBzdGlsbCB3YWl0IGZv
ciBhbGwgdGhlIGZlbmNlcy4KSSB0aG91Z2h0IG1heWJlIHdlIGNvdWxkIHVzZSB0aGF0IGJ1dCBJ
IGhhdmVuJ3Qgc3BlbnQgZW5vdWdoIHRpbWUKbG9va2luZyBhdCB0aGUgZGV0YWlscyB0byBiZSBz
dXJlLiAgSSBtYXkgYmUgbWlzc2luZyBzb21ldGhpbmcuCgo+IEJ1dCBJIHRoaW5rIEkga25vdyBh
IGRpZmZlcmVudCB3YXkgd2hpY2ggc2hvdWxkIHdvcms6IEEgZG1hX2ZlbmNlX2NoYWluCj4gY2Fu
IHN0aWxsIGNvbnRhaW4gYSBkbWFfZmVuY2VfYXJyYXksIG9ubHkgdGhlIG90aGVyIHdheSBhcm91
bmQgaXMKPiBmb3JiaWRkZW4uIFRoZW4gd2UgY3JlYXRlIHRoZSBjdXJzb3IgZnVuY3Rpb25hbGl0
eSBpbiBzdWNoIGEgd2F5IHRoYXQgaXQKPiBhbGxvd3MgdXMgdG8gZGVlcCBkaXZlIGludG8gdGhl
IGRhdGEgc3RydWN0dXJlIGFuZCByZXR1cm4gYWxsIGNvbnRhaW5pbmcKPiBmZW5jZXMgb25lIGJ5
IG9uZS4KCkFncmVlZC4gIEFzIGxvbmcgYXMgb25lIGNvbnRhaW5lciBpcyBhYmxlIHRvIGNvbnN1
bWUgdGhlIG90aGVyLCBpdCdzIGZpbmUuCgo+IEkgY2FuIHByb3RvdHlwZSB0aGF0IGlmIHlvdSB3
YW50LCBzaG91bGRuJ3QgYmUgbW9yZSB0aGFuIGEgZmV3IGhvdXJzIG9mCj4gaGFja2luZyBhbnl3
YXkuCgpJZiB5b3UnZCBsaWtlIHRvLCBnbyBmb3IgaXQuICBJJ2QgYmUgaGFwcHkgdG8gZ2l2ZSBp
dCBhIGdvIGFzIHdlbGwgYnV0CmlmIHlvdSBhbHJlYWR5IGtub3cgd2hhdCB5b3Ugd2FudCwgaXQg
bWF5IGJlIGVhc2llciBmb3IgeW91IHRvIGp1c3QKd3JpdGUgdGhlIHBhdGNoIGZvciB0aGUgY3Vy
c29yLgoKVHdvIG1vcmUgcXVlc3Rpb25zOgoKIDEuIERvIHlvdSB3YW50IHRoaXMgY29sbGFwc2lu
ZyB0byBoYXBwZW4gZXZlcnkgdGltZSB3ZSBjcmVhdGUgYQpkbWFfZmVuY2VfYXJyYXkgb3Igc2hv
dWxkIGl0IGJlIGEgc3BlY2lhbCBlbnRyeXBvaW50PyAgQ29sbGFwc2luZyBhbGwKdGhlIHRpbWUg
bGlrZWx5IG1lYW5zIGRvaW5nIGV4dHJhIGFycmF5IGNhbGN1bGF0aW9ucyBpbnN0ZWFkIG9mIHRo
ZQpkbWFfZmVuY2VfYXJyYXkgdGFraW5nIG93bmVyc2hpcCBvZiB0aGUgYXJyYXkgdGhhdCdzIHBh
c3NlZCBpbi4gIE15Cmd1dCBzYXlzIHRoYXQgY29zdCBpcyBvazsgYnV0IG15IGd1dCBkb2Vzbid0
IHNwZW5kIG11Y2ggdGltZSBpbiBrZXJuZWwKc3BhY2UuCgogMi4gV2hlbiB3ZSBkbyB0aGUgY29s
bGFwc2luZywgc2hvdWxkIHdlIGNhbGwgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCkKdG8gYXZvaWQg
YWRkaW5nIHNpZ25hbGVkIGZlbmNlcyB0byB0aGUgYXJyYXk/ICBJdCBzZWVtcyBsaWtlIGF2b2lk
aW5nCmFkZGluZyByZWZlcmVuY2VzIHRvIGZlbmNlcyB0aGF0IGFyZSBhbHJlYWR5IHNpZ25hbGVk
IHdvdWxkIGxldCB0aGUKa2VybmVsIGNsZWFuIHRoZW0gdXAgZmFzdGVyIGFuZCByZWR1Y2UgdGhl
IGxpa2VsaWhvb2QgdGhhdCBhIGZlbmNlCndpbGwgaGFuZyBhcm91bmQgZm9yZXZlciBiZWNhdXNl
IGl0IGtlZXBzIGdldHRpbmcgYWRkZWQgdG8gYXJyYXlzIHdpdGgKb3RoZXIgdW5zaWduYWxlZCBm
ZW5jZXMuCgotLUphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
