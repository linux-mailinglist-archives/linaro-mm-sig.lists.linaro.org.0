Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BB9AC12FB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 20:03:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B334455F2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 18:03:14 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by lists.linaro.org (Postfix) with ESMTPS id 6BCE344413
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 18:03:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=HFULhTHR;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.173) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c9677cd6d7so850764885a.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 11:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1747936982; x=1748541782; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J/udtId/XxzUAgerzFd20anDTdLUkEu2nN7uwbduy4g=;
        b=HFULhTHRocnQZiNFYta2xUMYG0fBdp3lwDi9/uKyF+1Kui9Xm3+j6BzCyuSTzVuQE2
         2TLavUX8Dewrvx3HqeZ+awWLbjIU134OCgBGFzhafGJbpeauZJv7M301MK2ALGBtdLj2
         qK3XPITwjbAZX47YjuCBfSrg0z7d2x53KnHV8LB0LtBI2plaDhIBJUavbxoSEbdfXjr1
         CAqdlfI7OI/zGQJs3dDoEkgTytigGjICCDJhhuIOUeFiLg7jlXY+tsRj+rPXR9GP6YKi
         xQ5bVsbI6M6F8QhXKe9FaTfD09FNt71soHcjHnUTvaa8alC3gr1/hTCXmLgWzlDQsuA+
         jdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747936982; x=1748541782;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J/udtId/XxzUAgerzFd20anDTdLUkEu2nN7uwbduy4g=;
        b=olbT9D2i7xhg2mMRXXg6ad+VgHI1/+sIUmXbwqIFxyOAaGjUOw7+XZ1YQcGI3ppnrz
         wXhi31C4l1NQz/CA+auwvYpLmjIkBUW/+q7gD1qnoVzUFwn05wZgnYk6LJbInt8CWB9I
         aZNiTyEhcfFcKpFQX/RsJN7svOqibnFq8piIZ8YX0A3mGHoRMsbtHskGneC9Y/D88EPR
         aJbOF4jLlHY9agq+LBLQn4Wem6r8qSjFtkd6ubV0x90IQASXajy2+tBoYY55hVHJFpHF
         S1sJYDYkNS6O4ofoN/F610PoEN0P0JPI15+/RVsAFJZ6nu64DxqW6c7T6WHDNedX6cdR
         WjHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnAbqNCeSolmQpElMbayI3q32dHujuVMZuKbQxf5U66mphjFIAfpBoP/sPr3eq829kHmF+FCklDqRmUb7f@lists.linaro.org
X-Gm-Message-State: AOJu0YwOdTEeX2khIe/i/aU9MNHLrWccR5/sjfBaDL/0SDkxJZ7QUJw7
	Tr/DART9Hgc7PM4YC5zhj9BCKK10F9I9NeLGSfNCVguoZPey686eXvBFnQunQWBd6eg=
X-Gm-Gg: ASbGncumg6esEg6JbKzkUVzyhTqWoXyv9DdZYPWDVXT8r5ilQs9uGympyRZqC3OWtTR
	IMgyBQ6biN6CuMhUN0ZvspQtfgOrv7oJMyUqFauDW5b74Mdz5Y3y83zJsFPceGdnVvVq4u0NuNh
	gMB2mUpJcW+vzhhoumjDNJzE0MEYB308+43kbNUshUc8jpS/O/qXBnOIKkm1nRZJAZXPqnq6Ei6
	PiLuNw7SZyqaWm1wExYGba2qNz+voLTxRTZHpt1sLnvdmExFh0QyBTfju+ybny9fLVUL/+w3Qff
	t202TwkZNCsVA9yfCapIxA8FFroWqNNp344NAO9lfDcc7BSNVXMAxIf5CidlVcLiFII=
X-Google-Smtp-Source: AGHT+IHh4iw4dgUV3S3EY22uzVTY0YQII61ellrTPDPBr9fV911fwzk1oNA0AI/vndoigz6Eq9Za+A==
X-Received: by 2002:a05:620a:d8d:b0:7c5:60c7:339 with SMTP id af79cd13be357-7cd46718a88mr4026950085a.9.1747936981809;
        Thu, 22 May 2025 11:03:01 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b2fc::5ac? ([2606:6d00:17:b2fc::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd468b62ecsm1052642185a.82.2025.05.22.11.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 11:03:01 -0700 (PDT)
Message-ID: <0c261c9aad759d791e0a576a47bbd064f28148e9.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: "Rob Herring (Arm)" <robh@kernel.org>, Tomeu Vizoso
 <tomeu@tomeuvizoso.net>
Date: Thu, 22 May 2025 14:03:00 -0400
In-Reply-To: <174742024812.3649303.12389396177218408388.robh@kernel.org>
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
	 <20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net>
	 <174742024812.3649303.12389396177218408388.robh@kernel.org>
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.173:from];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ndufresne.ca];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,suse.de,kernel.org,linux.intel.com,lwn.net,collabora.com,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,amd.com,oss.qualcomm.com,linaro.org,sntech.de,ffwll.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Queue-Id: 6BCE344413
X-Spamd-Bar: -
Message-ID-Hash: IPKX4TBYRPPXE7OMP4TMSU3HIZWLF2JZ
X-Message-ID-Hash: IPKX4TBYRPPXE7OMP4TMSU3HIZWLF2JZ
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Simona Vetter <simona@ffwll.ch>, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IPKX4TBYRPPXE7OMP4TMSU3HIZWLF2JZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iLA0KDQoNCkxlIGx1bmRpIDE5IG1haSAyMDI1IMOgIDA2OjM1IC0wNTAwLCBSb2IgSGVy
cmluZyAoQXJtKSBhIMOpY3JpdMKgOg0KPiANCj4gT24gRnJpLCAxNiBNYXkgMjAyNSAxODo1Mzox
NSArMDIwMCwgVG9tZXUgVml6b3NvIHdyb3RlOg0KPiA+IEFkZCB0aGUgYmluZGluZ3MgZm9yIHRo
ZSBOZXVyYWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9ja2NoaXAuDQo+ID4gDQo+ID4gdjI6
DQo+ID4gLSBBZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBlciBjb3JlLCBl
YWNoIHdpdGggaXRzIG93bg0KPiA+IMKgIElPTU1VKQ0KPiA+IC0gU2V2ZXJhbCBtaXNjLiBmaXhl
cyBmcm9tIFNlYmFzdGlhbiBSZWljaGVsDQo+ID4gDQo+ID4gdjM6DQo+ID4gLSBTcGxpdCByZWdp
c3RlciBibG9jayBpbiBpdHMgY29uc3RpdHVlbnQgc3ViYmxvY2tzLCBhbmQgb25seSByZXF1aXJl
DQo+ID4gwqAgdGhlIG9uZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFz
IEZyYXR0YXJvbGkpDQo+ID4gLSBHcm91cCBzdXBwbGllcyAoUm9iIEhlcnJpbmcpDQo+ID4gLSBF
eHBsYWluIHRoZSB3YXkgaW4gd2hpY2ggdGhlIHRvcCBjb3JlIGlzIHNwZWNpYWwgKFJvYiBIZXJy
aW5nKQ0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2
aXpvc28ubmV0Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2JpbmRpbmdzL25w
dS9yb2NrY2hpcCxya25uLWNvcmUueWFtbMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTYyICsrKysr
KysrKysrKysrKysrKysrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE2MiBpbnNlcnRpb25zKCsp
DQo+ID4gDQo+IA0KPiBNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGlu
Z19jaGVjaycgb24geW91ciBwYXRjaDoNCg0KWWVzLCBhbmQgaXQgZm91bmQgYW5kIHJlcG9ydGVk
IGl0IDI1IHRpbWVzLCBjYW4geW91IGZpeCBpdCBwbGVhc2UgPw0KDQpOaWNvbGFzDQoNCj4gDQo+
IHlhbWxsaW50IHdhcm5pbmdzL2Vycm9yczoNCj4gDQo+IGR0c2NoZW1hL2R0YyB3YXJuaW5ncy9l
cnJvcnM6DQo+IC9idWlsZHMvcm9iaGVycmluZy9kdC1yZXZpZXctY2kvbGludXgvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxya25uLWNvcmUueWFtbDogcHJv
cGVydGllczpyZWctDQo+IG5hbWVzOiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11
c3QgYmUgZml4ZWQ6DQo+IAlbeydjb25zdCc6ICdwYyd9LCB7J2NvbnN0JzogJ2NuYSd9LCB7J2Nv
bnN0JzogJ2NvcmUnfV0gaXMgdG9vIGxvbmcNCj4gCVt7J2NvbnN0JzogJ3BjJ30sIHsnY29uc3Qn
OiAnY25hJ30sIHsnY29uc3QnOiAnY29yZSd9XSBpcyB0b28gc2hvcnQNCj4gCUZhbHNlIHNjaGVt
YSBkb2VzIG5vdCBhbGxvdyAzDQo+IAkxIHdhcyBleHBlY3RlZA0KPiAJMyBpcyBncmVhdGVyIHRo
YW4gdGhlIG1heGltdW0gb2YgMg0KPiAJaGludDogIm1pbkl0ZW1zIiBpcyBvbmx5IG5lZWRlZCBp
ZiBsZXNzIHRoYW4gdGhlICJpdGVtcyIgbGlzdCBsZW5ndGgNCj4gCWZyb20gc2NoZW1hICRpZDog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9pdGVtcy55YW1sIw0KPiAvYnVpbGRz
L3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xpbnV4L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9ucHUvcm9ja2NoaXAscmtubi1jb3JlLmV4YW1wbGUuZHRiOg0KPiBucHUtY29yZUBm
ZGFiMDAwMCAocm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS10b3ApOiBjb21wYXRpYmxlOiAnb25l
T2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11c3QgYmUgZml4ZWQ6DQo+IAlbJ3JvY2tjaGlw
LHJrMzU4OC1ya25uLWNvcmUtdG9wJywgJ3JvY2tjaGlwLHJrbm4tY29yZS10b3AnXSBpcyB0b28g
bG9uZw0KPiAJJ3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wJyBpcyBub3Qgb25lIG9mIFsn
cm9ja2NoaXAscmszNTg4LXJrbm4tY29yZSddDQo+IAlmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2NrY2hpcCxya25uLWNvcmUueWFtbCMNCj4gL2J1
aWxkcy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51eC9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS5leGFtcGxlLmR0YjoNCj4gbnB1LWNv
cmVAZmRhYjAwMDAgKHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wKTogcmVnOiBbWzAsIDQy
NTU4NDIzMDQsIDAsIDM2ODY0XV0gaXMgdG9vIHNob3J0DQo+IAlmcm9tIHNjaGVtYSAkaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2NrY2hpcCxya25uLWNvcmUueWFtbCMN
Cj4gL2J1aWxkcy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51eC9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS5leGFtcGxlLmR0YjoNCj4g
bnB1LWNvcmVAZmRhYzAwMDAgKHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUpOiBjb21wYXRpYmxl
OiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11c3QgYmUgZml4ZWQ6DQo+IAlbJ3Jv
Y2tjaGlwLHJrMzU4OC1ya25uLWNvcmUnLCAncm9ja2NoaXAscmtubi1jb3JlJ10gaXMgdG9vIGxv
bmcNCj4gCSdyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlJyBpcyBub3Qgb25lIG9mIFsncm9ja2No
aXAscmszNTg4LXJrbm4tY29yZS10b3AnXQ0KPiAJZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2NoaXAscmtubi1jb3JlLnlhbWwjDQo+IC9idWls
ZHMvcm9iaGVycmluZy9kdC1yZXZpZXctY2kvbGludXgvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25wdS9yb2NrY2hpcCxya25uLWNvcmUuZXhhbXBsZS5kdGI6DQo+IG5wdS1jb3Jl
QGZkYWMwMDAwIChyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlKTogcmVnOiBbWzAsIDQyNTU5MDc4
NDAsIDAsIDM2ODY0XV0gaXMgdG9vIHNob3J0DQo+IAlmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2NrY2hpcCxya25uLWNvcmUueWFtbCMNCj4gDQo+
IGRvYyByZWZlcmVuY2UgZXJyb3JzIChtYWtlIHJlZmNoZWNrZG9jcyk6DQo+IA0KPiBTZWUNCj4g
aHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2RldmljZXRyZWUtYmluZGluZ3Mv
cGF0Y2gvMjAyNTA1MTYtNi0xMC1yb2NrZXQtdjMtMS03MDUxYWM5MjI1ZGJAdG9tZXV2aXpvc28u
bmV0DQo+IA0KPiBUaGUgYmFzZSBmb3IgdGhlIHNlcmllcyBpcyBnZW5lcmFsbHkgdGhlIGxhdGVz
dCByYzEuIEEgZGlmZmVyZW50IGRlcGVuZGVuY3kNCj4gc2hvdWxkIGJlIG5vdGVkIGluICp0aGlz
KiBwYXRjaC4NCj4gDQo+IElmIHlvdSBhbHJlYWR5IHJhbiAnbWFrZSBkdF9iaW5kaW5nX2NoZWNr
JyBhbmQgZGlkbid0IHNlZSB0aGUgYWJvdmUNCj4gZXJyb3IocyksIHRoZW4gbWFrZSBzdXJlICd5
YW1sbGludCcgaXMgaW5zdGFsbGVkIGFuZCBkdC1zY2hlbWEgaXMgdXAgdG8NCj4gZGF0ZToNCj4g
DQo+IHBpcDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVwZ3JhZGUNCj4gDQo+IFBsZWFzZSBjaGVjayBh
bmQgcmUtc3VibWl0IGFmdGVyIHJ1bm5pbmcgdGhlIGFib3ZlIGNvbW1hbmQgeW91cnNlbGYuIE5v
dGUNCj4gdGhhdCBEVF9TQ0hFTUFfRklMRVMgY2FuIGJlIHNldCB0byB5b3VyIHNjaGVtYSBmaWxl
IHRvIHNwZWVkIHVwIGNoZWNraW5nDQo+IHlvdXIgc2NoZW1hLiBIb3dldmVyLCBpdCBtdXN0IGJl
IHVuc2V0IHRvIHRlc3QgYWxsIGV4YW1wbGVzIHdpdGggeW91ciBzY2hlbWEuDQo+IA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
