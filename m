Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B44F0553671
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jun 2022 17:42:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDE483F2FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jun 2022 15:42:41 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by lists.linaro.org (Postfix) with ESMTPS id 41FF63EF34
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jun 2022 15:42:37 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id g15so10387672qke.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jun 2022 08:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=j+TmZokpENwEZtYw+9zpADRR+ouuJfl5CqudgyGGVMI=;
        b=rYLR4rn00kFhjq3jMMRY7EV3DBXR7qIPak/L8qbBz7KbspyXsDYwanSNawW1tKwOFH
         ewJrprj9XAeaMHMnCVlg1mhbGk8X6etye45/t42emj4n96CBFUyK5gOLOtftDOcdpZMh
         908EbU0jMLl63DlEFVUzOjzrIiEDup69vNvC3BVREh9cTbfasxeL2JzuFMVynhfUHn98
         SGF8a9JKO8Pf8V6BWlSMg2+9tMhrZdQC/G3V+w+lJ0Ok91h8ogWI0K7twjgTqZVkmTxE
         6XVNDuCjL70HX8cR/4q2TUO+k8WZac1WO63xDQo9PTA6W60gd87FacoEKmclkA3dwS9D
         TH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=j+TmZokpENwEZtYw+9zpADRR+ouuJfl5CqudgyGGVMI=;
        b=057Ye7OEyvqS1hGg3O9MH7ifsHwAwOjT0y+xlaLlthNpbjdk0DW6oJfqlMuXQo39lp
         UXcooqxWcjJPK+Ox/lu/6dJnKpPEzE/boWkivZ2roNB2jWOQYfoUgFiDZ+iHs9uioP1/
         ccv49BGSBjLg8wpgYv1et++FV+KhIjQOkSRw2rL+gMeuY2Ro17yOdU8we73JBeG1YTTW
         CofimSSkFujAzVdJ4+UfZfImQJmNp5NUE6lECEVOG+IDDkqmcW7AtNNhcbRudt3o6ySw
         Zj4oiTpC2x3X2x1g33jhGTw/qaUG3L/R4iCi9uvtHUelLfVYPW7kjuMX36r5pplF31KM
         dzuw==
X-Gm-Message-State: AJIora+iQxreLxxThCBWh77liN9zaS0/5bYlg6Fbg0CWj5lOj1YSqgM+
	vudRLVnI79u8yWjAMZLLvI7v2A==
X-Google-Smtp-Source: AGRyM1vE+SSLFEkr3ihfgV0r8gtNBCmLkJBjCPAUN5aHdi7vF4C6XWO85PiLvuKGcwPkdcTuFdcspg==
X-Received: by 2002:a05:620a:280d:b0:67d:2480:fdea with SMTP id f13-20020a05620a280d00b0067d2480fdeamr20435321qkp.157.1655826156800;
        Tue, 21 Jun 2022 08:42:36 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id w10-20020a05620a424a00b006a79d8c8198sm14389324qko.135.2022.06.21.08.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 08:42:36 -0700 (PDT)
Message-ID: <2aabc41c8432d09b7ceeb8e67144a639d3d86c72.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Andy.Hsieh" <andy.hsieh@mediatek.com>, linux-media
 <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, lkml <linux-kernel@vger.kernel.org>
Date: Tue, 21 Jun 2022 11:42:35 -0400
In-Reply-To: <39f7f41a-af8d-4700-37da-9401455afb98@amd.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <cdb508e49eb1439f4e4c327d2a6738f219e04bf8.camel@ndufresne.ca>
	 <5822b325-766e-ce3c-50eb-d7f54f14fd0b@mediatek.com>
	 <39f7f41a-af8d-4700-37da-9401455afb98@amd.com>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
Message-ID-Hash: IGZQXF4WL4FIW44QVGXRX5I73WYMH7LF
X-Message-ID-Hash: IGZQXF4WL4FIW44QVGXRX5I73WYMH7LF
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, "Sharma, Shashank" <Shashank.Sharma@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IGZQXF4WL4FIW44QVGXRX5I73WYMH7LF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuIGFuZCBBbmR5LA0KDQpMZSBtYXJkaSAyMSBqdWluIDIwMjIgw6AgMTI6MzQg
KzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoNCj4gwqBIaSBBbmR5LA0KPiDCoA0K
PiDCoEFtIDIxLjA2LjIyIHVtIDEyOjE3IHNjaHJpZWIgQW5keS5Ic2llaDoNCj4gwqANCj4gPiBP
biAyLzE2LzIxIDQ6MzkgQU0sIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6DQo+ID4gPiBMZSBsdW5k
aSAxNSBmw6l2cmllciAyMDIxIMOgIDA5OjU4ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIGEgw6lj
cml0wqA6DQo+ID4gPiA+IEhpIGd1eXMsDQo+ID4gPiA+IA0KPiA+ID4gPiB3ZSBhcmUgY3VycmVu
dGx5IHdvcmtpbmcgYW4gRnJlZXN5bmMgYW5kIGRpcmVjdCBzY2FuIG91dCBmcm9tIHN5c3RlbSAN
Cj4gPiA+ID4gbWVtb3J5IG9uIEFNRCBBUFVzIGluIEErQSBsYXB0b3BzLg0KPiA+ID4gPiANCj4g
PiA+ID4gT24gcHJvYmxlbSB3ZSBzdHVtYmxlZCBvdmVyIGlzIHRoYXQgb3VyIGRpc3BsYXkgaGFy
ZHdhcmUgbmVlZHMgdG8gc2NhbiANCj4gPiA+ID4gb3V0IGZyb20gdW5jYWNoZWQgc3lzdGVtIG1l
bW9yeSBhbmQgd2UgY3VycmVudGx5IGRvbid0IGhhdmUgYSB3YXkgdG8gDQo+ID4gPiA+IGNvbW11
bmljYXRlIHRoYXQgdGhyb3VnaCBETUEtYnVmLg0KPiA+ID4gPiANCj4gPiA+ID4gRm9yIG91ciBz
cGVjaWZpYyB1c2UgY2FzZSBhdCBoYW5kIHdlIGFyZSBnb2luZyB0byBpbXBsZW1lbnQgc29tZXRo
aW5nIA0KPiA+ID4gPiBkcml2ZXIgc3BlY2lmaWMsIGJ1dCB0aGUgcXVlc3Rpb24gaXMgc2hvdWxk
IHdlIGhhdmUgc29tZXRoaW5nIG1vcmUgDQo+ID4gPiA+IGdlbmVyaWMgZm9yIHRoaXM/DQo+ID4g
PiANCj4gPiA+IEhvcGVmdWxseSBJJ20gZ2V0dGluZyB0aGlzIHJpZ2h0LCBidXQgdGhpcyBtYWtl
cyBtZSB0aGluayBvZiBhIGxvbmcNCj4gPiA+IHN0YW5kaW5nDQo+ID4gPiBpc3N1ZSBJJ3ZlIG1l
dCB3aXRoIEludGVsIERSTSBhbmQgVVZDIGRyaXZlci4gSWYgSSBsZXQgdGhlIFVWQyBkcml2ZXIN
Cj4gPiA+IGFsbG9jYXRlDQo+ID4gPiB0aGUgYnVmZmVyLCBhbmQgaW1wb3J0IHRoZSByZXN1bHRp
bmcgRE1BQnVmIChjYWNoZWFibGUgbWVtb3J5IHdyaXR0ZW4gd2l0aA0KPiA+ID4gYSBjcHUNCj4g
PiA+IGNvcHkgaW4gdGhlIGtlcm5lbCkgaW50byBEUk0sIHdlIGNhbiBzZWUgY2FjaGUgYXJ0aWZh
Y3QgYmVpbmcgZGlzcGxheWVkLg0KPiA+ID4gV2hpbGUNCj4gPiA+IGlmIEkgdXNlIHRoZSBEUk0g
ZHJpdmVyIG1lbW9yeSAoZHVtYiBidWZmZXIgaW4gdGhhdCBjYXNlKSBpdCdzIGNsZWFuDQo+ID4g
PiBiZWNhdXNlDQo+ID4gPiB0aGVyZSBpcyBhIGRyaXZlciBzcGVjaWZpYyBzb2x1dGlvbiB0byB0
aGF0Lg0KPiA+ID4gDQo+ID4gPiBUaGVyZSBpcyBubyBvYnZpb3VzIHdheSBmb3IgdXNlcnNwYWNl
IGFwcGxpY2F0aW9uIHRvIGtub3cgd2hhdCdzIGlzDQo+ID4gPiByaWdodC93cm9uZw0KPiA+ID4g
d2F5IGFuZCBpbiBmYWN0IGl0IGZlZWxzIGxpa2UgdGhlIGtlcm5lbCBjb3VsZCBzb2x2ZSB0aGlz
IHNvbWVob3cgd2l0aG91dA0KPiA+ID4gaGF2aW5nDQo+ID4gPiB0byBpbmZvcm0gdXNlcnNwYWNl
IChwZXJoYXBzKS4NCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gQWZ0ZXIgYWxsIHRoZSBzeXN0
ZW0gbWVtb3J5IGFjY2VzcyBwYXR0ZXJuIGlzIGEgUENJZSBleHRlbnNpb24gYW5kIGFzIA0KPiA+
ID4gPiBzdWNoIHNvbWV0aGluZyBnZW5lcmljLg0KPiA+ID4gPiANCj4gPiA+ID4gUmVnYXJkcywN
Cj4gPiA+ID4gQ2hyaXN0aWFuLg0KPiA+ID4gDQo+ID4gPiANCj4gPiANCj4gPiBIaSBBbGwsDQo+
ID4gDQo+ID4gV2UgYWxzbyBlbmNvdW50ZXJlZCB0aGUgVVZDIGNhY2hlIGlzc3VlIG9uIEFSTXY4
IENQVSBpbiBNZWRpYXRlayBTb0Mgd2hlbg0KPiA+IHVzaW5nIFVWQyBkbWFidWYtZXhwb3J0IGFu
ZCBmZWVkaW5nIHRoZSBkbWFidWYgdG8gdGhlIERSTSBkaXNwbGF5IGJ5IHRoZQ0KPiA+IGZvbGxv
d2luZyBHU3RyZWFtZXIgY29tbWFuZDoNCj4gPiANCj4gPiAjIGdzdC1sYXVuY2gtMS4wIHY0bDJz
cmMgZGV2aWNlPS9kZXYvdmlkZW8wIGlvLW1vZGU9ZG1hYnVmICEga21zc2luaw0KPiA+IA0KPiA+
IFVWQyBkcml2ZXIgdXNlcyB2aWRlb2J1ZjItdm1hbGxvYyB0byBhbGxvY2F0ZSBidWZmZXJzIGFu
ZCBpcyBhYmxlIHRvIGV4cG9ydA0KPiA+IHRoZW0gYXMgZG1hYnVmLiBCdXQgVVZDIHVzZXMgbWVt
Y3B5KCkgdG8gZmlsbCB0aGUgZnJhbWUgYnVmZmVyIGJ5IENQVQ0KPiA+IHdpdGhvdXQNCj4gPiBm
bHVzaGluZyB0aGUgY2FjaGUuIFNvIGlmIHRoZSBkaXNwbGF5IGhhcmR3YXJlIGRpcmVjdGx5IHVz
ZXMgdGhlIGJ1ZmZlciwgdGhlDQo+ID4gaW1hZ2Ugc2hvd24gb24gdGhlIHNjcmVlbiB3aWxsIGJl
IGRpcnR5Lg0KPiA+IA0KPiA+IEhlcmUgYXJlIHNvbWUgZXhwZXJpbWVudHM6DQo+ID4gDQo+ID4g
MS4gQnkgZG9pbmcgc29tZSBtZW1vcnkgb3BlcmF0aW9ucyAoZS5nLiBkZXZtZW0pIHdoZW4gc3Ry
ZWFtaW5nIHRoZSBVVkMsDQo+ID4gwqDCoMKgdGhlIGlzc3VlIGlzIG1pdGlnYXRlZC4gSSBndWVz
cyB0aGUgY2FjaGUgaXMgc3dhcHBlZCByYXBpZGx5Lg0KPiA+IDIuIEJ5IHJlcGxhY2luZyB0aGUg
bWVtY3B5KCkgd2l0aCBtZW1jcHlfZmx1c2hjYWNoZSgpIGluIHRoZSBVVkMgZHJpdmVyLA0KPiA+
IMKgwqDCoHRoZSBpc3N1ZSBkaXNhcHBlYXJzLg0KPiA+IDMuIEJ5IGFkZGluZyAuZmluaXNoIGNh
bGxiYWNrIGluIHZpZGVvYnVmMi12bWFsbG9jLmMgdG8gZmx1c2ggdGhlIGNhY2hlDQo+ID4gwqDC
oMKgYmVmb3JlIHJldHVybmluZyB0aGUgYnVmZmVyLCB0aGUgaXNzdWUgZGlzYXBwZWFycy4NCj4g
PiANCj4gPiBJdCBzZWVtcyB0byBsYWNrIGEgY2FjaGUgZmx1c2ggc3RhZ2UgaW4gZWl0aGVyIFVW
QyBvciBEaXNwbGF5LiBXZSBtYXkgYWxzbw0KPiA+IG5lZWQgY29tbXVuaWNhdGlvbiBiZXR3ZWVu
IHRoZSBwcm9kdWNlciBhbmQgY29uc3VtZXIuIFRoZW4sIHRoZXkgY2FuIGRlY2lkZQ0KPiA+IHdo
byBpcyByZXNwb25zaWJsZSBmb3IgdGhlIGZsdXNoaW5nIHRvIGF2b2lkIGZsdXNoaW5nIGNhY2hl
IHVuY29uZGl0aW9uYWxseQ0KPiA+IGxlYWRpbmcgdG8gdGhlIHBlcmZvcm1hbmNlIGltcGFjdC4N
Cj4gwqANCj4gwqBXZWxsLCB0aGF0J3Mgbm90IHdoYXQgdGhpcyBtYWlsIHRocmVhZCB3YXMgYWxs
IGFib3V0Lg0KPiDCoA0KPiDCoFRoZSBpc3N1ZSB5b3UgYXJlIGZhY2luZyBpcyB0aGF0IHNvbWVi
b2R5IGlzIGZvcmdldHRpbmcgdG8gZmx1c2ggY2FjaGVzLCBidXQNCj4gdGhlIGlzc3VlIGRpc2N1
c3NlZCBpbiB0aGlzIHRocmVhZCBoZXJlIGlzIHRoYXQgd2UgaGF2ZSBoYXJkd2FyZSB3aGljaA0K
PiBieXBhc3NlcyBjYWNoZXMgYWx0b2dldGhlci4NCj4gwqANCj4gwqBBcyBmYXIgYXMgSSBjYW4g
c2VlIGluIHlvdXIgY2FzZSBVVkMganVzdCBhbGxvY2F0ZXMgbm9ybWFsIGNhY2hlZCBzeXN0ZW0N
Cj4gbWVtb3J5IHRocm91Z2ggdmlkZW9idWYyLXZtYWxsb2MoKSBhbmQgaXQgaXMgcGVyZmVjdGx5
IHZhbGlkIHRvIGZpbGwgdGhhdA0KPiB1c2luZyBtZW1jcHkoKS4NCj4gwqANCj4gwqBJZiBzb21l
IGhhcmR3YXJlIHRoZW4gYWNjZXNzZXMgdGhvc2UgYnVmZmVycyBieXBhc3NpbmcgQ1BVIGNhY2hl
cyB0aGVuIGl0IGlzDQo+IHRoZSByZXNwb25zaWJpbGl0eSBvZiB0aGUgaW1wb3J0aW5nIGRyaXZl
ciBhbmQvb3IgRE1BIHN1YnN5c3RlbSB0byBmbHVzaCB0aGUNCj4gY2FjaGVzIGFjY29yZGluZ2x5
Lg0KDQpJJ3ZlIHRyYWNrZWQgdGhpcyBkb3duIHRvIHZpZGVvYnVmMi12bWFsbG9jLmMgZmFpbGlu
ZyB0byBsb29rIGZvciBjb2hlcmVuY3kNCmR1cmluZyAiYXR0YWNoKCkiLiBJdCBpcyBhbHNvIG1p
c3NpbmcgYmVnaW5fL2VuZCBhY2Nlc3MgaW1wbGVtZW50YXRpb24gZm9yIHRoZQ0KY2FzZSBpdCBn
ZXQgYXR0YWNoZWQgdG8gYSBub24tY29oZXJlbnQgZGV2aWNlLiBTZWVtcyBmaXhhYmxlIHRob3Vn
aCwgYnV0ICJJJ20NCmZhciBmcm9tIGFuIGV4cGVydCIsIGJ1dCBtb3JlIHNvbWUgcmFuZG9tIHBl
cnNvbiByZWFkaW5nIGNvZGUgYW5kIGNvbW1lbnRzLg0KDQpyZWdhcmRzLA0KTmljb2xhcw0KDQo+
IMKgDQo+IMKgUmVnYXJkcywNCj4gwqBDaHJpc3RpYW4uDQo+IMKgDQo+IMKgDQo+ID4gDQo+ID4g
UmVnYXJkcywNCj4gPiBBbmR5IEhzaWVoDQo+ID4gDQo+ID4gKioqKioqKioqKioqKiBNRURJQVRF
SyBDb25maWRlbnRpYWxpdHkgTm90aWNlICoqKioqKioqKioqKioqKioqKioqDQo+ID4gVGhlIGlu
Zm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGlzIGUtbWFpbCBtZXNzYWdlIChpbmNsdWRpbmcgYW55
IA0KPiA+IGF0dGFjaG1lbnRzKSBtYXkgYmUgY29uZmlkZW50aWFsLCBwcm9wcmlldGFyeSwgcHJp
dmlsZWdlZCwgb3Igb3RoZXJ3aXNlDQo+ID4gZXhlbXB0IGZyb20gZGlzY2xvc3VyZSB1bmRlciBh
cHBsaWNhYmxlIGxhd3MuIEl0IGlzIGludGVuZGVkIHRvIGJlIA0KPiA+IGNvbnZleWVkIG9ubHkg
dG8gdGhlIGRlc2lnbmF0ZWQgcmVjaXBpZW50KHMpLiBBbnkgdXNlLCBkaXNzZW1pbmF0aW9uLCAN
Cj4gPiBkaXN0cmlidXRpb24sIHByaW50aW5nLCByZXRhaW5pbmcgb3IgY29weWluZyBvZiB0aGlz
IGUtbWFpbCAoaW5jbHVkaW5nIGl0cyANCj4gPiBhdHRhY2htZW50cykgYnkgdW5pbnRlbmRlZCBy
ZWNpcGllbnQocykgaXMgc3RyaWN0bHkgcHJvaGliaXRlZCBhbmQgbWF5IA0KPiA+IGJlIHVubGF3
ZnVsLiBJZiB5b3UgYXJlIG5vdCBhbiBpbnRlbmRlZCByZWNpcGllbnQgb2YgdGhpcyBlLW1haWws
IG9yIGJlbGlldmUNCj4gPiB0aGF0IHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWlsIGluIGVy
cm9yLCBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgDQo+ID4gaW1tZWRpYXRlbHkgKGJ5IHJlcGx5
aW5nIHRvIHRoaXMgZS1tYWlsKSwgZGVsZXRlIGFueSBhbmQgYWxsIGNvcGllcyBvZiANCj4gPiB0
aGlzIGUtbWFpbCAoaW5jbHVkaW5nIGFueSBhdHRhY2htZW50cykgZnJvbSB5b3VyIHN5c3RlbSwg
YW5kIGRvIG5vdA0KPiA+IGRpc2Nsb3NlIHRoZSBjb250ZW50IG9mIHRoaXMgZS1tYWlsIHRvIGFu
eSBvdGhlciBwZXJzb24uIFRoYW5rIHlvdSENCj4gwqANCj4gwqANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
