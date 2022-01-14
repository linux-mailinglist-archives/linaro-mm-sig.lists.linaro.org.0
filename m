Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2814B63FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:09:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0424401D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:09:58 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lists.linaro.org (Postfix) with ESMTPS id 2407C3EDB2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 10:41:50 +0000 (UTC)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 20E9K1Y7028639;
	Fri, 14 Jan 2022 11:41:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=Db8QoLf2xpm+lVoXBntS8ts6R2As6iUdm19chCVqc50=;
 b=YnGikFqXTkWXyKKI6gP9Hdz6hNUbt8VIMw4oFehA6YMpaIGn5VhmHtKn79MMXAsFPSNW
 ++ywwrN9bYLBgipIHKnNNIdTEh6e3zbryXjbawXxOSng1j/7bb8fWEMg4g/3H0dDdg2p
 la50Lc+9ujAG6kr7kj7cBoNstHn6WZ76bsHCFzF5pcwMouAYa1HaTYWw2ZVoWUVrsP+z
 a46wuBZ/VEwvQtjGPM5XI/JoYtXy9kdqtDGplfFKe5w44RaAx1EbtU2NRJjyoajASj3v
 Ft9Hl9/UXGQRPSC14GLETN95FZQx0lv3Oqg+fVXbruPEKar8EAqawewUz7nNKNHVZV9l 2A==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3dk6eygfch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Jan 2022 11:41:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E71BB100034;
	Fri, 14 Jan 2022 11:41:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DC5AA21231F;
	Fri, 14 Jan 2022 11:41:09 +0100 (CET)
Received: from lmecxl1137.lme.st.com (10.75.127.46) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.26; Fri, 14 Jan
 2022 11:41:08 +0100
To: Philippe Cornu <philippe.cornu@foss.st.com>,
        Yannick Fertre
	<yannick.fertre@foss.st.com>,
        David Airlie <airlied@linux.ie>, Daniel Vetter
	<daniel@ffwll.ch>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Alain Volmat
	<alain.volmat@foss.st.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Liam Mark
	<lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
        Brian Starkey
	<Brian.Starkey@arm.com>,
        John Stultz <john.stultz@linaro.org>,
        Christian
 Konig <christian.koenig@amd.com>, <soc@kernel.org>
References: <20220113171921.17466-1-philippe.cornu@foss.st.com>
 <20220113171921.17466-3-philippe.cornu@foss.st.com>
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Message-ID: <7bd3229c-8b66-6a4f-4fed-cd1929f2c397@foss.st.com>
Date: Fri, 14 Jan 2022 11:41:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220113171921.17466-3-philippe.cornu@foss.st.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-14_04,2022-01-14_01,2021-12-02_01
X-MailFrom: prvs=701320b2d8=raphael.gallais-pou@foss.st.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5LXGBUEZIPA2S6WLYWBBJE2SE2GBZRDG
X-Message-ID-Hash: 5LXGBUEZIPA2S6WLYWBBJE2SE2GBZRDG
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:09:50 +0000
CC: dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] MAINTAINERS: update drm/stm drm/sti and cec/sti maintainers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5LXGBUEZIPA2S6WLYWBBJE2SE2GBZRDG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

DQpPbiAxLzEzLzIyIDY6MTkgUE0sIFBoaWxpcHBlIENvcm51IHdyb3RlOg0KPiBBZGQgQWxhaW4g
YXMgc3RpIG1haW50YWluZXIgZm9yIGJvdGggZHJtL3N0aSAmIGNlYy9zdGkuDQo+IEFkZCBSYXBo
YcOrbCBhcyBzdG0gbWFpbnRhaW5lciBmb3IgZHJtL3N0bS4NCj4NCj4gU2lnbmVkLW9mZi1ieTog
UGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QGZvc3Muc3QuY29tPg0KPiAtLS0NCj4gIE1B
SU5UQUlORVJTIHwgMyArKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCg0K
DQpIaSBQaGlsaXBwZSwNCg0KDQpSZXZpZXdlZC1ieTogUmFwaGFlbCBHYWxsYWlzLVBvdSA8cmFw
aGFlbC5nYWxsYWlzLXBvdUBmb3NzLnN0LmNvbT4NCg0KDQpUaGFuayB5b3UgISA6RA0KUmFwaGHD
q2wNCg0KDQo+DQo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTDQo+IGlu
ZGV4IDZiZWEwODBkMDE1OS4uNzA4ZjhjODZlNGM5IDEwMDY0NA0KPiAtLS0gYS9NQUlOVEFJTkVS
Uw0KPiArKysgYi9NQUlOVEFJTkVSUw0KPiBAQCAtNjQyMyw2ICs2NDIzLDcgQEAgRjoJRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvDQo+ICBGOglkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvDQo+ICANCj4gIERSTSBEUklWRVJTIEZPUiBTVEkNCj4gK006
CUFsYWluIFZvbG1hdCA8YWxhaW4udm9sbWF0QGZvc3Muc3QuY29tPg0KPiAgTDoJZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiAgUzoJTWFpbnRhaW5lZA0KPiAgVDoJZ2l0IGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYw0KPiBAQCAtNjQzMSw2ICs2NDMy
LDcgQEAgRjoJZHJpdmVycy9ncHUvZHJtL3N0aQ0KPiAgDQo+ICBEUk0gRFJJVkVSUyBGT1IgU1RN
DQo+ICBNOglZYW5uaWNrIEZlcnRyZSA8eWFubmljay5mZXJ0cmVAZm9zcy5zdC5jb20+DQo+ICtN
OglSYXBoYWVsIEdhbGxhaXMtUG91IDxyYXBoYWVsLmdhbGxhaXMtcG91QGZvc3Muc3QuY29tPg0K
PiAgTToJUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QGZvc3Muc3QuY29tPg0KPiAgTDoJ
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiAgUzoJTWFpbnRhaW5lZA0KPiBAQCAt
MTgxNTIsNiArMTgxNTQsNyBAQCBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
c291bmQvc3Qsc3RpLWFzb2MtY2FyZC50eHQNCj4gIEY6CXNvdW5kL3NvYy9zdGkvDQo+ICANCj4g
IFNUSSBDRUMgRFJJVkVSDQo+ICtNOglBbGFpbiBWb2xtYXQgPGFsYWluLnZvbG1hdEBmb3NzLnN0
LmNvbT4NCj4gIFM6CU1haW50YWluZWQNCj4gIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZWRpYS9zdGloLWNlYy50eHQNCj4gIEY6CWRyaXZlcnMvbWVkaWEvY2VjL3BsYXRm
b3JtL3N0aS8NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
