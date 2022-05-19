Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A92152E027
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 00:58:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB0D4410BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 22:58:53 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id D522E404D0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 22:58:48 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id ch13so12485765ejb.12
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 15:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fbvRpFr5DPXTtOR44VCta4b2435YDPc6d32y8p5DMFs=;
        b=tmgzSvLs41etypUwVw6uvM4NJ7dps6ZyQj2aBbW7epcFgM1Ay51F0S7IjbCoJksZfX
         TTpFjuHjkEptjOiTlsli4tFh+oErHaBnqtMItPyxv2qy7VODo1p/EvoTTfwQwKwaDtxb
         dk32GAC35YE/UiJkyA28GkYicMdMnT9LP7CMNqwb2P7wDaRcMQdLF64WhHwAOsVqxEzb
         IvirbQNwC8JmFxmLhZwIKBA5IZSGNgSq9qJzWpO7P3/5qZEk4hYfsFqfvt5mHhY5wy7a
         Hb+gMTAQi/YzZ0omwdFPKdnq3EUQ2uM8UWqYpmjfHk2WfAxiHrxKonHfqn1Ynn5Acb+x
         QvEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fbvRpFr5DPXTtOR44VCta4b2435YDPc6d32y8p5DMFs=;
        b=AK6dPg9f3ueRAowtGs5L0cEQefrVdr22ptEXkC6gHY1+g8Sndlwp9T00YQ033aNHBB
         0imKsy3nfcRDVU8KQEPQXSg4TOINfx6cM+8ps6hve8P9DWUWnjZFWbsexUsQVuivBt2R
         62U8fVX7UEovkbyaq2N1groCYOzdQLF6W9OSX+J8v91ehTlDyyYjvTn7E0WmL9n1ZUv+
         WuCBVzX80XDI5dVibD8SRnIx2OXbRbhjjgwh85fiIKk+hQg2PISIfaNOaJKWVYttMlC7
         BR2Nw3oe0hO4u+DxpQlFnm7Sz3MSLyiv5kILNQL/J/FRxftG88Y4DjuHe0DS5VlsJuMV
         83mA==
X-Gm-Message-State: AOAM533mb8tUzkeMnW5m/1stAQIOV6oVQbHIEq42zsgc9Lf1zSO1fU0f
	v+TZAqX7pr6l1nMp61rkCul/LVIeyGqVzmawJLEYdw==
X-Google-Smtp-Source: ABdhPJyCspSO6uSSvdTwbgpo114K2n8Zu/UEIhiXBAFu3CbmO21LqPpQWV86fpjxbG/+XuAjm/dg3ve7EPV7qg0jVvo=
X-Received: by 2002:a17:907:3fa7:b0:6fe:8a4e:5ff1 with SMTP id
 hr39-20020a1709073fa700b006fe8a4e5ff1mr6285207ejc.665.1653001127748; Thu, 19
 May 2022 15:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220516171315.2400578-1-tjmercier@google.com>
 <175c5af3-9224-9c8e-0784-349dad9a2954@amd.com> <CABdmKX2GcgCs1xANYPBp8OEtk9qqH7AvCzpdppj9rHXvMqWSAw@mail.gmail.com>
 <0875fa95-3a25-a354-1433-201fca81ed3e@amd.com> <CABdmKX1+VYfdzyVYOS5MCsr4ptGTygmuUP9ikyh-vW6DgKk2kg@mail.gmail.com>
 <YoM9BAwybcjG7K/H@kroah.com> <d820893c-fa2e-3bac-88be-f39c06d89c01@amd.com>
 <CABdmKX2m1b1kdACKM19S+u9uR5RTy1UGMRgd+3QA_oAyCpeggg@mail.gmail.com> <7f895a99-adfa-bcbd-c130-a924c668b8af@amd.com>
In-Reply-To: <7f895a99-adfa-bcbd-c130-a924c668b8af@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 19 May 2022 15:58:36 -0700
Message-ID: <CABdmKX0XLvRZvXyiN0P_B-fUACiF5xwQ07+u_gaR+hDhu_x_TA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: J3Q2UDRJGMZL5WW7LHAPWZHJUG4DCTHE
X-Message-ID-Hash: J3Q2UDRJGMZL5WW7LHAPWZHJUG4DCTHE
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suren Baghdasaryan <surenb@google.com>, Kalesh Singh <kaleshsingh@google.com>, Minchan Kim <minchan@google.com>, Greg Kroah-Hartman <gregkh@google.com>, John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Hridya Valsaraju <hridya@google.com>, kernel-team@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Move sysfs work out of DMA-BUF export path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3Q2UDRJGMZL5WW7LHAPWZHJUG4DCTHE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTgsIDIwMjIgYXQgNTowMyBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMTguMDUuMjIgdW0gMDE6MDkgc2No
cmllYiBULkouIE1lcmNpZXI6DQo+ID4gW1NOSVBdDQo+ID4+PiBQZXJoYXBzIHdlIHNob3VsZCBn
byBqdXN0IG9uZSBzdGVwIGZ1cnRoZXIgYW5kIG1ha2UgYSBtaXNjIGRldmljZSBub2RlDQo+ID4+
PiBmb3IgZG1hYnVnIGRlYnVnZ2luZyBpbmZvcm1hdGlvbiB0byBiZSBpbiBhbmQganVzdCBoYXZl
IHVzZXJzcGFjZQ0KPiA+Pj4gcG9sbC9yZWFkIG9uIHRoZSBkZXZpY2Ugbm9kZSBhbmQgd2Ugc3Bp
dCB0aGUgaW5mbyB0aGF0IHVzZWQgdG8gYmUgaW4NCj4gPj4+IGRlYnVnZnMgb3V0IHRocm91Z2gg
dGhhdD8gIFRoYXQgd2F5IHRoaXMgb25seSBhZmZlY3RzIHN5c3RlbXMgd2hlbiB0aGV5DQo+ID4+
PiB3YW50IHRvIHJlYWQgdGhlIGluZm9ybWF0aW9uIGFuZCBub3Qgbm9ybWFsIGNvZGUgcGF0aHM/
ICBZZWFoIHRoYXQncyBhDQo+ID4+PiBoYWNrLCBidXQgdGhpcyB3aG9sZSB0aGluZyBmZWVscyBv
dmVybHkgY29tcGxleCBub3cuDQo+ID4+IFllYWgsIHRvdGFsbHkgYWdyZWUgb24gdGhlIGNvbXBs
ZXhpdHkgbm90ZS4gSSdtIGp1c3QgYWJzb2x1dGVseSBub3Qga2Vlbg0KPiA+PiB0byBhZGQgaGFj
ayBvdmVyIGhhY2sgb3ZlciBoYWNrIHRvIG1ha2Ugc29tZXRoaW5nIHdvcmsgd2hpY2ggZnJvbSBt
eQ0KPiA+PiBwb2ludCBvZiB2aWV3IGhhcyBzb21lIHNlcmlvdXMgaXNzdWVzIHdpdGggaXQncyBk
ZXNpZ24uDQo+ID4+DQo+ID4gV2h5IGlzIHRoaXMgcGF0Y2ggYSBoYWNrPyBXZSBmb3VuZCBhIHBy
b2JsZW0gd2l0aCB0aGUgaW5pdGlhbCBkZXNpZ24NCj4gPiB3aGljaCBub2JvZHkgc2F3IHdoZW4g
aXQgd2FzIG9yaWdpbmFsbHkgY3JlYXRlZCwgYW5kIG5vdyB3ZSdyZSB0cnlpbmcNCj4gPiB0byBh
ZGRyZXNzIGl0IHdpdGhpbiB0aGUgY29uc3RyYWludHMgdGhhdCBleGlzdC4NCj4NCj4gV2VsbCB0
aGUgaXNzdWUgaXMgdGhhdCB5b3UgZG9uJ3QgdHJ5IHRvIHRhY2tsZSB0aGUgdW5kZXJseWluZyBw
cm9ibGVtLA0KPiBidXQgcmF0aGVyIGp1c3QgbWl0aWdhdGUgdGhlIHVuZm9yZXNlZW4gY29uc2Vx
dWVuY2VzLiBUaGF0IGlzIHByZXR0eQ0KPiBjbGVhcmx5IGEgaGFjayB0byBtZS4NCj4NCj4gPiBJ
cyB0aGVyZSBzb21lIG90aGVyDQo+ID4gc29sdXRpb24gdG8gdGhlIHByb2JsZW0gb2YgZXhwb3J0
cyBnZXR0aW5nIGJsb2NrZWQgdGhhdCB5b3Ugd291bGQNCj4gPiBzdWdnZXN0IGhlcmU/DQo+DQo+
IFdlbGwgcHJldHR5IG11Y2ggdGhlIHNhbWUgYXMgR3JlZyBvdXRsaW5lZCBhcyB3ZWxsLiBHbyBi
YWNrIHRvIHlvdXINCj4gZHJhd2luZyBib2FyZCBhbmQgY29tZSBiYWNrIHdpdGggYSBzb2x1dGlv
biB3aGljaCBkb2VzIG5vdCBuZWVkIHN1Y2gNCj4gd29ya2Fyb3VuZHMuDQo+DQo+IEFsdGVybmF0
aXZlbHkgeW91IGNhbiBnaXZlIG1lIGEgZnVsbCBvdmVydmlldyBvZiB0aGUgZGVzaWduIGFuZCBl
eHBsYWluDQo+IHdoeSBleGFjdGx5IHRoYXQgaW50ZXJmYWNlIGhlcmUgaXMgbmVjZXNzYXJ5IGlu
IGV4YWN0bHkgdGhhdCBmb3JtLg0KPg0KV2UgZW5kZWQgdXAgaGVyZSBiZWNhdXNlIHdlIGNvdWxk
IG5vdCB1c2UgZGVidWdmcy4NCmh0dHBzOi8vc291cmNlLmFuZHJvaWQuY29tL3NldHVwL3N0YXJ0
L2FuZHJvaWQtMTEtcmVsZWFzZSNkZWJ1Z2ZzDQoNCkFub3RoZXIgaWRlYSB3YXMgYWRkaW5nIHBl
ci1idWZmZXIgc3RhdHMgdG8gcHJvY2ZzLCBidXQgdGhhdCB3YXMgbm90DQphbiBvcHRpb24gc2lu
Y2UgcGVyLWJ1ZmZlciBzdGF0cyBhcmUgbm90IHByb2Nlc3Mgc3BlY2lmaWMuDQoNClNvIGl0IHNl
ZW1lZCBsaWtlIHN5c2ZzIHdhcyBhbiBhcHByb3ByaWF0ZSBzb2x1dGlvbiBhdCB0aGUgdGltZS4g
SXQNCmNvbWVzIHdpdGggYSBzdGFibGUgaW50ZXJmYWNlIGFzIGEgYm9udXMsIGJ1dCB3aXRoIHRo
ZSBsaW1pdGF0aW9uIG9mIDENCnZhbHVlIHBlciBmaWxlIHRoaXMgbGVhZHMgdG8gY3JlYXRpbmcg
bG90cyBvZiBmaWxlcyBpbiBzeXNmcyBmb3IgYWxsDQpkbWEgYnVmZmVycy4gVGhpcyBsZWFkcyB0
byBpbmNyZWFzZWQga2VybmZzIGxvY2sgY29udGVudGlvbiwgYW5kDQp1bmZvcnR1bmF0ZWx5IHdl
IHRyeSB0byB0YWtlIHRoZSBsb2NrIG9uIHRoZSBob3QgcGF0aC4NCg0KV2l0aCB0aGUgZGVzY3Jp
cHRpb24gYW5kIGxpbmtzIHRvIHRoZSB1c2Vyc3BhY2UgY29kZSB3aGljaCBhY3R1YWxseQ0KdXNl
cyB0aGUgZmVhdHVyZSBJIGZlZWwgbGlrZSB0aGF0J3MgYSBjb21wbGV0ZSBwaWN0dXJlIG9mIHdo
YXQncw0KY3VycmVudGx5IGhhcHBlbmluZyB3aXRoIHRoaXMgaW50ZXJmYWNlLiBJZiB5b3UgY291
bGQgZXhwbGFpbiB3aGF0DQppbmZvcm1hdGlvbiBpcyBtaXNzaW5nIEknbGwgZG8gbXkgYmVzdCB0
byBwcm92aWRlIGl0Lg0KaHR0cHM6Ly9jcy5hbmRyb2lkLmNvbS9hbmRyb2lkL3BsYXRmb3JtL3N1
cGVycHJvamVjdC8rL21hc3RlcjpzeXN0ZW0vbWVtb3J5L2xpYm1lbWluZm8vbGliZG1hYnVmaW5m
by9kbWFidWZfc3lzZnNfc3RhdHMuY3BwO2w9NTU7ZHJjPTNmN2RiN2FlYzYwYmJiYTE0YzZkZDgx
NjAwODIwZWQ2MmZlM2Y0NzU7YnB2PTA7YnB0PTENCmh0dHBzOi8vY3MuYW5kcm9pZC5jb20vYW5k
cm9pZC9wbGF0Zm9ybS9zdXBlcnByb2plY3QvKy9tYXN0ZXI6c3lzdGVtL21lbW9yeS9saWJtZW1p
bmZvL2xpYmRtYWJ1ZmluZm8vdG9vbHMvZG1hYnVmX2R1bXAuY3BwO2w9MTgyO2RyYz0zZjdkYjdh
ZWM2MGJiYmExNGM2ZGQ4MTYwMDgyMGVkNjJmZTNmNDc1O2Jwdj0wO2JwdD0xDQpodHRwczovL2Nz
LmFuZHJvaWQuY29tL2FuZHJvaWQvcGxhdGZvcm0vc3VwZXJwcm9qZWN0LysvbWFzdGVyOmZyYW1l
d29ya3MvbmF0aXZlL2NtZHMvZHVtcHN0YXRlL2R1bXBzdGF0ZS5jcHA7ZHJjPTYyMTUzM2Y4OTVi
MzBjYTI4MWU3OWE3YTdjMDNlZWZkMzUyMzU5YjU7bD0xODMyLTE4MzMNCg0KPiA+PiBGb3IgZXhh
bXBsZSB0cnlpbmcgdG8gZG8gYWNjb3VudGluZyBiYXNlZCBvbiBETUEtYnVmcyBpcyBleHRyZW1l
bHkNCj4gPj4gcXVlc3Rpb25hYmxlIHRvIGJlZ2luIHdpdGguIFNlZSBhIG1vZGVybiBnYW1lIGZv
ciBleGFtcGxlIGNhbiBoYXZlDQo+ID4+IGJldHdlZW4gMTBrIGFuZCAxMDBrIG9mIGRpZmZlcmVu
dCBidWZmZXJzLCByZXNlcnZpbmcgb25lIGZpbGUgZGVzY3JpcHRvcg0KPiA+PiBmb3IgZWFjaCBv
ZiB0aG9zZSBvYmplY3RzIGlzIGFic29sdXRlbHkgbm90IGdvaW5nIHRvIHdvcmsuDQo+ID4+DQo+
ID4+IFNvIG15IHJlcXVlc3QgaXMgdG8gcGxlYXNlIGRlc2NyaWJlIHlvdXIgZnVsbCB1c2UgY2Fz
ZSBhbmQgbm90IGp1c3Qgd2h5DQo+ID4+IHlvdSB0aGluayB0aGlzIHBhdGNoIGlzIGp1c3RpZmll
ZC4NCj4gPj4NCj4gPiBUaGUgdXNlIGNhc2Ugd2FzIGRlc2NyaWJlZCBpbiB0aGUgY29tbWl0IG1l
c3NhZ2Ugd2hlbiB0aGUgZmVhdHVyZSB3YXMNCj4gPiBpbml0aWFsbHkgYWRkZWQgKGFmdGVyIGRp
c2N1c3Npb24gYWJvdXQgaXQgb24gdGhlIGxpc3QpIGluY2x1ZGluZw0KPiA+IGxpbmtzIHRvIGNv
ZGUgdGhhdCB1c2VzIHRoZSBmZWF0dXJlOg0KPiA+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUua2VybmVsLm9yZyUy
RmFsbCUyRjIwMjEwNjAzMjE0NzU4LjI5NTUyNTEtMS1ocmlkeWElNDBnb29nbGUuY29tJTJGJmFt
cDtkYXRhPTA1JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzNmNmUzZTk4ZmM2
ZjQ1ZWFkODBkMDhkYTM4NWE1OWU2JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2Ql
N0MwJTdDMCU3QzYzNzg4NDI1Nzk3OTY2NDM4NyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpX
SWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZN
bjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT1pJTJCU2ZwQiUyQjZpQm9sQkh1NktyS0gz
bmpxMHpvMVNCYnJLREhaT2pwc0lrcyUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPg0KPiBZZWFoIGFuZCB0
byBiZSBob25lc3QgSSBoYXZlIHRoZSBzdHJvbmcgZmVlbGluZyBub3cgdGhhdCB0aGlzIHdhcw0K
PiBhYnNvbHV0ZWx5IG5vdCB3ZWxsIHRob3VnaHQgdGhyb3VnaC4NCg0KSSdtIG9wZW4gdG8gd29y
a2luZyBvbiBhIHJlcGxhY2VtZW50IGZvciB0aGlzIGlmIHdlIGNhbid0IGZpbmQgYW4NCmFjY2Vw
dGFibGUgc29sdXRpb24gaGVyZSwgYnV0IEkgd291bGQgYXBwcmVjaWF0ZSBzb21lIGRpcmVjdGlv
biBvbg0Kd2hhdCB3b3VsZCBiZSBhY2NlcHRhYmxlLiBGb3IgZXhhbXBsZSBHcmVnJ3MgaWRlYSBz
b3VuZHMgd29ya2FibGUsIGJ1dA0KdGhlIHF1ZXN0aW9uIGlzIGlmIGl0IG1lcmdlYWJsZT8NCg0K
PiBUaGlzIGRlc2NyaXB0aW9uIGFzIHdlbGwgYXMgdGhlIGluDQo+IGtlcm5lbCBkb2N1bWVudGF0
aW9uIGFyZSBub3QgZXZlbiByZW1vdGVseSBzdWZmaWNpZW50IHRvIGV4cGxhaW4gd2hhdA0KPiB5
b3UgZ3V5cyBhcmUgZG9pbmcgd2l0aCB0aGlzLg0KPg0KPiBTbyBwbGVhc2UgY29tZSB1cCB3aXRo
IGEgY29tcGxldGUgZGVzaWduIGRlc2NyaXB0aW9uIGZvciBib3RoIHVzZXJzcGFjZQ0KPiBhbmQg
a2VybmVsIHdoeSB0aGlzIGludGVyZmFjZSBoZXJlIGlzIG5lY2Vzc2FyeSBpbnNpZGUgdGhlIHVw
c3RyZWFtIGtlcm5lbC4NCj4NCj4gSWYgeW91IGNhbid0IGNvbnZpbmNlIG1lIHRoYXQgdGhpcyBp
cyBhIGdvb2QgaWRlYSBJIHdpbGwganVzdCBibHVudGx5DQo+IG1hcmsgdGhpcyBETUEtYnVmIHN5
c2ZzIGludGVyZmFjZSBhcyBkZXByZWNhdGVkLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4u
DQo+DQo+ID4NCj4gPg0KPiA+PiBSZWdhcmRzLA0KPiA+PiBDaHJpc3RpYW4uDQo+ID4+DQo+ID4+
PiB0aGFua3MsDQo+ID4+Pg0KPiA+Pj4gZ3JlZyBrLWgNCj4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
