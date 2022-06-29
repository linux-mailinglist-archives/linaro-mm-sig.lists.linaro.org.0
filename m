Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E152560B37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 22:43:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 724D83F30D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 20:43:28 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id A25823E900
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 20:43:23 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id d17so18541704wrc.10
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 13:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jK9//luGxpfbLffwOAXZvUD0KZmVzGC+4VJ1Mf8Ewyg=;
        b=k5WSowoVnLxuxKjSPP3cp1XzTEAHY3y45UhQuF8UEDAyCTaVCqG/CT+GI0HDpCJiRr
         qY92QFJIvnA+icgYFsho+2NHk8VIu8knAAsA4n5acDav+H8Bx/JChuc9/xU2pHxunkqn
         Xa7V6+8eHKvHEzuihehfP5VnTNMUxG2sVEkn+lldtmnf/cCTkXjtmmUEqEhHB1ghA1+P
         XiNUznA+U4VlknZfH43Wecpj/M1WX+pi8c7VlQcttS6Tn+4WR79rWAWtr3AWhjkWvAlB
         8c14CN87gcOsljgVtquohoB6BqLa9yxRumbngWbW4Zv5Aafipq5gZb9HHF5pygsGcTHe
         sV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=jK9//luGxpfbLffwOAXZvUD0KZmVzGC+4VJ1Mf8Ewyg=;
        b=mx/Zy8xFw7KfYt7uPrGaVj8SxxljphMLdH+vhC1no03sPdoDhVFeCf+4gihIhlYNqY
         r0YUdUhKmHP9KmV8xoAd381xbB0AQ0TVpWrO9LTfPoTPXsafuBn7T3Rv8nPrM3BlsC0I
         kqh7kAN8vpsAeWFU3m5G0ntzUUk7tlPpraJYcUQrB5YSbk03+CfgQM4jY/KAB9OJs0i5
         v2znOtyNu/T5ghuE3/LhDNDp6aoQDd7gEe6YonihSWduNEZH7gVCmxQ4i1gtgFXnAhxp
         K0G89nluX/ymWgFdcawqidV9QB0KpZpY7bUWBeg06FFNXPDqG50DWu/lL0Tb+uZa/luT
         iwqA==
X-Gm-Message-State: AJIora8rLOQEDR5aVjpNJSIj2MQhcKI1IB54ivzkzB5Un4EyxW00NS9Z
	z3fB1e8l3nmBcZ0hTFWiLlOLDymORaxeQZBO/8HnGQ==
X-Google-Smtp-Source: AGRyM1sdZpRIIt8pzdPqsysENF0+n2K+v1kR9bTNvP8/I1WmweNa1mfdcg2Fg6hW5XcLplZP4kyRd9qLNe68d2DEstQ=
X-Received: by 2002:a5d:52c6:0:b0:21b:9f39:78de with SMTP id
 r6-20020a5d52c6000000b0021b9f3978demr5179522wrv.699.1656535402268; Wed, 29
 Jun 2022 13:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220623220613.3014268-1-kaleshsingh@google.com>
 <20220623220613.3014268-2-kaleshsingh@google.com> <Yrrrz7MxMu8OoEPU@bfoster>
 <CAC_TJvejs5gbggC1hekyjUNctC_8+3FmVn0B7zAZox2+MkEjaA@mail.gmail.com> <YrxEUbDkYLE6XF6x@bfoster>
In-Reply-To: <YrxEUbDkYLE6XF6x@bfoster>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Wed, 29 Jun 2022 13:43:11 -0700
Message-ID: <CAC_TJvcRd7=9xGXP5-t8v3g5iFWtYANpGA-nTqaGZBVTwa=07w@mail.gmail.com>
To: Brian Foster <bfoster@redhat.com>
Message-ID-Hash: NSKS5DNWX3L5WQOIITPLHV4OXTOE77OH
X-Message-ID-Hash: NSKS5DNWX3L5WQOIITPLHV4OXTOE77OH
X-MailFrom: kaleshsingh@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alexander Viro <viro@zeniv.linux.org.uk>, Christoph Hellwig <hch@infradead.org>, Stephen Brennan <stephen.s.brennan@oracle.com>, David.Laight@aculab.com, Ioannis Ilkos <ilkos@google.com>, "T.J. Mercier" <tjmercier@google.com>, Suren Baghdasaryan <surenb@google.com>, "Cc: Android Kernel" <kernel-team@android.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, Johannes Weiner <hannes@cmpxchg.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Paul Gortmaker <paul.gortmaker@windriver.com>, Mike Rapoport <rppt@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>, linux-fsdevel <linux-fsdevel@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, DRI mailing list <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING 
 FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] procfs: Add 'size' to /proc/<pid>/fdinfo/
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NSKS5DNWX3L5WQOIITPLHV4OXTOE77OH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdW4gMjksIDIwMjIgYXQgNToyMyBBTSBCcmlhbiBGb3N0ZXIgPGJmb3N0ZXJAcmVk
aGF0LmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgSnVuIDI4LCAyMDIyIGF0IDAzOjM4OjAyUE0g
LTA3MDAsIEthbGVzaCBTaW5naCB3cm90ZToNCj4gPiBPbiBUdWUsIEp1biAyOCwgMjAyMiBhdCA0
OjU0IEFNIEJyaWFuIEZvc3RlciA8YmZvc3RlckByZWRoYXQuY29tPiB3cm90ZToNCj4gPiA+DQo+
ID4gPiBPbiBUaHUsIEp1biAyMywgMjAyMiBhdCAwMzowNjowNlBNIC0wNzAwLCBLYWxlc2ggU2lu
Z2ggd3JvdGU6DQo+ID4gPiA+IFRvIGJlIGFibGUgdG8gYWNjb3VudCB0aGUgYW1vdW50IG9mIG1l
bW9yeSBhIHByb2Nlc3MgaXMga2VlcGluZyBwaW5uZWQNCj4gPiA+ID4gYnkgb3BlbiBmaWxlIGRl
c2NyaXB0b3JzIGFkZCBhICdzaXplJyBmaWVsZCB0byBmZGluZm8gb3V0cHV0Lg0KPiA+ID4gPg0K
PiA+ID4gPiBkbWFidWZzIGZkcyBhbHJlYWR5IGV4cG9zZSBhICdzaXplJyBmaWVsZCBmb3IgdGhp
cyByZWFzb24sIHJlbW92ZSB0aGlzDQo+ID4gPiA+IGFuZCBtYWtlIGl0IGEgY29tbW9uIGZpZWxk
IGZvciBhbGwgZmRzLiBUaGlzIGFsbG93cyB0cmFja2luZyBvZg0KPiA+ID4gPiBvdGhlciB0eXBl
cyBvZiBtZW1vcnkgKGUuZy4gbWVtZmQgYW5kIGFzaG1lbSBpbiBBbmRyb2lkKS4NCj4gPiA+ID4N
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogS2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUu
Y29tPg0KPiA+ID4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4NCj4gPiA+ID4gQ2hhbmdlcyBpbiB2
MjoNCj4gPiA+ID4gICAtIEFkZCBDaHJpc3RpYW4ncyBSZXZpZXdlZC1ieQ0KPiA+ID4gPg0KPiA+
ID4gPiBDaGFuZ2VzIGZyb20gcmZjOg0KPiA+ID4gPiAgIC0gU3BsaXQgYWRkaW5nICdzaXplJyBh
bmQgJ3BhdGgnIGludG8gYSBzZXBhcmF0ZSBwYXRjaGVzLCBwZXIgQ2hyaXN0aWFuDQo+ID4gPiA+
ICAgLSBTcGxpdCBmZGluZm8gc2VxX3ByaW50ZiBpbnRvIHNlcGFyYXRlIGxpbmVzLCBwZXIgQ2hy
aXN0aWFuDQo+ID4gPiA+ICAgLSBGaXggaW5kZW50YXRpb24gKHVzZSB0YWJzKSBpbiBkb2N1bWVu
dGFpb24sIHBlciBSYW5keQ0KPiA+ID4gPg0KPiA+ID4gPiAgRG9jdW1lbnRhdGlvbi9maWxlc3lz
dGVtcy9wcm9jLnJzdCB8IDEyICsrKysrKysrKystLQ0KPiA+ID4gPiAgZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyAgICAgICAgICB8ICAxIC0NCj4gPiA+ID4gIGZzL3Byb2MvZmQuYyAgICAgICAg
ICAgICAgICAgICAgICAgfCAgOSArKysrKy0tLS0NCj4gPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gPiA+ID4NCj4gLi4uDQo+ID4gPg0K
PiA+ID4gQWxzbyBub3Qgc3VyZSBpZiBpdCBtYXR0ZXJzIHRoYXQgbXVjaCBmb3IgeW91ciB1c2Ug
Y2FzZSwgYnV0IHNvbWV0aGluZw0KPiA+ID4gd29ydGggbm90aW5nIGF0IGxlYXN0IHdpdGggc2ht
ZW0gaXMgdGhhdCBvbmUgY2FuIGRvIHNvbWV0aGluZyBsaWtlOg0KPiA+ID4NCj4gPiA+ICMgY2F0
IC9wcm9jL21lbWluZm8gfCBncmVwIFNobWVtOg0KPiA+ID4gU2htZW06ICAgICAgICAgICAgICAg
NzY0IGtCDQo+ID4gPiAjIHhmc19pbyAtZmMgImZhbGxvYyAtayAwIDEwbSIgLi9maWxlDQo+ID4g
PiAjIGxzIC1hbGggZmlsZQ0KPiA+ID4gLXJ3LS0tLS0tLS4gMSByb290IHJvb3QgMCBKdW4gMjgg
MDc6MjIgZmlsZQ0KPiA+ID4gIyBzdGF0IGZpbGUNCj4gPiA+ICAgRmlsZTogZmlsZQ0KPiA+ID4g
ICBTaXplOiAwICAgICAgICAgICAgICAgQmxvY2tzOiAyMDQ4MCAgICAgIElPIEJsb2NrOiA0MDk2
ICAgcmVndWxhciBlbXB0eSBmaWxlDQo+ID4gPiAjIGNhdCAvcHJvYy9tZW1pbmZvIHwgZ3JlcCBT
aG1lbToNCj4gPiA+IFNobWVtOiAgICAgICAgICAgICAxMTAwNCBrQg0KPiA+ID4NCj4gPiA+IC4u
LiB3aGVyZSB0aGUgcmVzdWx0aW5nIG1lbW9yeSB1c2FnZSBpc24ndCByZWZsZWN0ZWQgaW4gaV9z
aXplIChidXQgaXMNCj4gPiA+IGlzIGluIGlfYmxvY2tzL2J5dGVzKS4NCj4gPg0KPiA+IEkgdHJp
ZWQgYSBzaW1pbGFyIGV4cGVyaW1lbnQgYSBmZXcgdGltZXMsIGJ1dCBJIGRvbid0IHNlZSB0aGUg
c2FtZQ0KPiA+IHJlc3VsdHMuIEluIG15IGNhc2UsIHRoZXJlIGlzIG5vdCBhbnkgY2hhbmdlIGlu
IHNobWVtLiBJSVVDIHRoZQ0KPiA+IGZhbGxvY2F0ZSBpcyBhbGxvY2F0aW5nIHRoZSBkaXNrIHNw
YWNlIG5vdCBzaGFyZWQgbWVtb3J5Lg0KPiA+DQo+DQo+IFNvcnJ5LCBpdCB3YXMgaW1wbGllZCBp
biBteSBwcmV2aW91cyB0ZXN0IHdhcyB0aGF0IEkgd2FzIHJ1bm5pbmcgYWdhaW5zdA0KPiB0bXBm
cy4gU28gcmVnYXJkbGVzcyBvZiBmcywgdGhlIGZhbGxvY2F0ZSBrZWVwX3NpemUgc2VtYW50aWNz
IHNob3duIGluDQo+IGJvdGggY2FzZXMgaXMgYXMgZXhwZWN0ZWQ6IHRoZSB1bmRlcmx5aW5nIGJs
b2NrcyBhcmUgYWxsb2NhdGVkIGFuZCB0aGUNCj4gaW5vZGUgc2l6ZSBpcyB1bmNoYW5nZWQuDQo+
DQo+IFdoYXQgd2Fzbid0IHRvdGFsbHkgY2xlYXIgdG8gbWUgd2hlbiBJIHJlYWQgdGhpcyBwYXRj
aCB3YXMgMS4gd2hldGhlcg0KPiB0bXBmcyByZWZlcnMgdG8gU2htZW0gYW5kIDIuIHdoZXRoZXIg
dG1wZnMgYWxsb3dlZCB0aGlzIHNvcnQgb2YNCj4gb3BlcmF0aW9uLiBUaGUgdGVzdCBhYm92ZSBz
ZWVtcyB0byBjb25maXJtIGJvdGgsIGhvd2V2ZXIsIHJpZ2h0PyBFLmcuLCBhDQo+IG1vcmUgZGV0
YWlsZWQgZXhhbXBsZToNCj4NCj4gIyBtb3VudCB8IGdyZXAgL3RtcA0KPiB0bXBmcyBvbiAvdG1w
IHR5cGUgdG1wZnMgKHJ3LG5vc3VpZCxub2RldixzZWNsYWJlbCxucl9pbm9kZXM9MTA0ODU3Nixp
bm9kZTY0KQ0KPiAjIGNhdCAvcHJvYy9tZW1pbmZvIHwgZ3JlcCBTaG1lbToNCj4gU2htZW06ICAg
ICAgICAgICAgICA1MzAwIGtCDQo+ICMgeGZzX2lvIC1mYyAiZmFsbG9jIC1rIDAgMWciIC90bXAv
ZmlsZQ0KPiAjIHN0YXQgL3RtcC9maWxlDQo+ICAgRmlsZTogL3RtcC9maWxlDQo+ICAgU2l6ZTog
MCAgICAgICAgICAgICAgIEJsb2NrczogMjA5NzE1MiAgICBJTyBCbG9jazogNDA5NiAgIHJlZ3Vs
YXIgZW1wdHkgZmlsZQ0KPiBEZXZpY2U6IDIyaC8zNGQgSW5vZGU6IDQ1ICAgICAgICAgIExpbmtz
OiAxDQo+IEFjY2VzczogKDA2MDAvLXJ3LS0tLS0tLSkgIFVpZDogKCAgICAwLyAgICByb290KSAg
IEdpZDogKCAgICAwLyAgICByb290KQ0KPiBDb250ZXh0OiB1bmNvbmZpbmVkX3U6b2JqZWN0X3I6
dXNlcl90bXBfdDpzMA0KPiBBY2Nlc3M6IDIwMjItMDYtMjkgMDg6MDQ6MDEuMzAxMzA3MTU0IC0w
NDAwDQo+IE1vZGlmeTogMjAyMi0wNi0yOSAwODowNDowMS4zMDEzMDcxNTQgLTA0MDANCj4gQ2hh
bmdlOiAyMDIyLTA2LTI5IDA4OjA0OjAxLjQ1MTMxMjgzNCAtMDQwMA0KPiAgQmlydGg6IDIwMjIt
MDYtMjkgMDg6MDQ6MDEuMzAxMzA3MTU0IC0wNDAwDQo+ICMgY2F0IC9wcm9jL21lbWluZm8gfCBn
cmVwIFNobWVtOg0KPiBTaG1lbTogICAgICAgICAgIDEwNTM4NzYga0INCj4gIyBybSAtZiAvdG1w
L2ZpbGUNCj4gIyBjYXQgL3Byb2MvbWVtaW5mbyB8IGdyZXAgU2htZW06DQo+IFNobWVtOiAgICAg
ICAgICAgICAgNTMwMCBrQg0KPg0KPiBTbyBjbGVhcmx5IHRoaXMgaW1wYWN0cyBTaG1lbS4uIHdh
cyB5b3VyIHRlc3QgcnVuIGFnYWluc3QgdG1wZnMgb3Igc29tZQ0KPiBvdGhlciAoZGlzayBiYXNl
ZCkgZnM/DQoNCkhpIEJyaWFuLA0KDQpUaGFua3MgZm9yIGNsYXJpZnlpbmcuIE15IGlzc3VlIHdh
cyB0bXBmcyBub3QgbW91bnRlZCBhdCAvdG1wIGluIG15IHN5c3RlbToNCg0KPT0+IG1lbWluZm8u
c3RhcnQgPD09DQpTaG1lbTogICAgICAgICAgICAgICA1NzIga0INCj09PiBtZW1pbmZvLnN0b3Ag
PD09DQpTaG1lbTogICAgICAgICAgICAgNTE2ODgga0INCg0KPg0KPiBGV0lXLCBJIGRvbid0IGhh
dmUgYW55IG9iamVjdGlvbiB0byBleHBvc2luZyBpbm9kZSBzaXplIGlmIGl0J3MgY29tbW9ubHkN
Cj4gdXNlZnVsIGluZm9ybWF0aW9uLiBNeSBmZWVkYmFjayB3YXMgbW9yZSBqdXN0IGFuIGZ5aSB0
aGF0IGlfc2l6ZSBkb2Vzbid0DQo+IG5lY2Vzc2FyaWx5IHJlZmxlY3QgdW5kZXJseWluZyBzcGFj
ZSBjb25zdW1wdGlvbiAod2hldGhlciBpdCdzIG1lbW9yeSBvcg0KPiBkaXNrIHNwYWNlKSBpbiBt
b3JlIGdlbmVyaWMgY2FzZXMsIGJlY2F1c2UgaXQgc291bmRzIGxpa2UgdGhhdCBpcyByZWFsbHkN
Cj4gd2hhdCB5b3UncmUgYWZ0ZXIgaGVyZS4gVGhlIG9wcG9zaXRlIGV4YW1wbGUgdG8gdGhlIGFi
b3ZlIHdvdWxkIGJlDQo+IHNvbWV0aGluZyBsaWtlIGFuICd4ZnNfaW8gLWZjICJ0cnVuY2F0ZSAx
dCIgL3RtcC9maWxlJywgd2hpY2ggc2hvd3MgYQ0KPiAxVEIgaW5vZGUgc2l6ZSB3aXRoIHplcm8g
YWRkaXRpb25hbCBzaG1lbSB1c2FnZS4NCg0KRnJvbSB0aGVzZSBjYXNlcywgaXQgc2VlbXMgdGhl
IG1vcmUgZ2VuZXJpYyB3YXkgdG8gZG8gdGhpcyBpcyBieQ0KY2FsY3VsYXRpbmcgdGhlIGFjdHVh
bCBzaXplIGNvbnN1bWVkIHVzaW5nIHRoZSBibG9ja3MuIChpX2Jsb2NrcyAqDQo1MTIpLiBTbyBp
biB0aGUgbGF0dGVyIGV4YW1wbGUgICd4ZnNfaW8gLWZjICJ0cnVuY2F0ZSAxdCIgL3RtcC9maWxl
Jw0KdGhlIHNpemUgY29uc3VtZWQgd291bGQgYmUgemVyby4gTGV0IG1lIGtub3cgaWYgaXQgc291
bmRzIG9rIHRvIHlvdQ0KYW5kIEkgY2FuIHJlcG9zdCB0aGUgdXBkYXRlZCB2ZXJzaW9uLg0KDQpU
aGFua3MsDQpLYWxlc2gNCg0KPg0KPiBCcmlhbg0KPg0KPiA+IGNhdCAvcHJvYy9tZW1pbmZvID4g
bWVtaW5mby5zdGFydA0KPiA+IHhmc19pbyAtZmMgImZhbGxvYyAtayAwIDUwbSIgLi94ZnNfZmls
ZQ0KPiA+IGNhdCAvcHJvYy9tZW1pbmZvID4gbWVtaW5mby5zdG9wDQo+ID4gdGFpbCAtbiArMSBt
ZW1pbmZvLnN0KiB8IGdyZXAgLWkgJz09XHxTaG1lbTonDQo+ID4NCj4gPiA9PT4gbWVtaW5mby5z
dGFydCA8PT0NCj4gPiBTaG1lbTogICAgICAgICAgICAgICA0ODQga0INCj4gPiA9PT4gbWVtaW5m
by5zdG9wIDw9PQ0KPiA+IFNobWVtOiAgICAgICAgICAgICAgIDQ4NCBrQg0KPiA+DQo+ID4gbHMg
LWxoIHhmc19maWxlDQo+ID4gLXJ3LS0tLS0tLSAxIHJvb3Qgcm9vdCAwIEp1biAyOCAxNToxMiB4
ZnNfZmlsZQ0KPiA+DQo+ID4gc3RhdCB4ZnNfZmlsZQ0KPiA+ICAgRmlsZTogeGZzX2ZpbGUNCj4g
PiAgIFNpemU6IDAgICAgICAgICAgICAgICBCbG9ja3M6IDEwMjQwMCAgICAgSU8gQmxvY2s6IDQw
OTYgICByZWd1bGFyIGVtcHR5IGZpbGUNCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBLYWxlc2gNCj4g
Pg0KPiA+ID4NCj4gPiA+IEJyaWFuDQo+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiAgICAgICAvKiBz
aG93X2ZkX2xvY2tzKCkgbmV2ZXIgZGVmZXJlbmNlcyBmaWxlcyBzbyBhIHN0YWxlIHZhbHVlIGlz
IHNhZmUgKi8NCj4gPiA+ID4gICAgICAgc2hvd19mZF9sb2NrcyhtLCBmaWxlLCBmaWxlcyk7DQo+
ID4gPiA+IC0tDQo+ID4gPiA+IDIuMzcuMC5yYzAuMTYxLmcxMGYzN2JlZDkwLWdvb2cNCj4gPiA+
ID4NCj4gPiA+DQo+ID4NCj4NCj4gLS0NCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3Vw
IGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBrZXJu
ZWwtdGVhbSt1bnN1YnNjcmliZUBhbmRyb2lkLmNvbS4NCj4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
