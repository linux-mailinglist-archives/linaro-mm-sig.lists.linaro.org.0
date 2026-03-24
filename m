Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIfqBOVh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:27:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A877D43137D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:27:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65FBE3F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:26:59 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010007.outbound.protection.outlook.com [52.101.69.7])
	by lists.linaro.org (Postfix) with ESMTPS id 0659A3F751
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 13:36:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=nxp.com header.s=selector1 header.b="kUW/fOxg";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 52.101.69.7 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com;
	dmarc=pass (policy=none) header.from=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UI/hCC1thlhlS8PVm2BSryfE76o6HTPphKa/HDSHVWSWf9VM+QmHYkO/E1Pm3GFAzGnYXiihcmNPCQ/KHdATZCvhpX0hrMor8xNt+O/Mo6cxboe8elH6WLvII6gN85azcghosmd5rf586DSsQRnNryRhAK/p0AGdwoPHNANilqU7MM3sboLnsCtHVffxwFu+L9WTQ5ZWpajVPRFEdKbOA9+W45WAj3aZeIXNg/+4NM5u8YZRdrXyYKnNpJCwROY871PmYRDtFdVraX4yPiLjhRWcnNbpOF+i/ze6qU5JYJmN3MBUpNzt2LHheV/bRh+96+ZtiI1wnM7X80N1iIkP1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xhIQ1SBclHKw+Q8c8AXe0Esq5oz+eGAWfktGJnFBl0Y=;
 b=fplOjtIyrfVmV7pLsX7stBu1moG/B6MQ7+wVbfocuCAzlFRuBxvh9p0Q4P1kESV6jALUAJ0Y3HH8SD/1Q2vMRbaK28zs+UTZEOC7i/KrXoBZ7/RyrJ7yJPMavI27EDH5imeuma/MJt8RhwDlre4Dy3v9oTfvbuW+ziDmU03liixYB7E0R1da2VloPeAYJzSCJg4Q1wTIPP+vUYuaq3RKqldqU/plXvWFZk7fEk++nTRxKKrQGfpfblClLGsVgZlOdHxKCm7BGP3UpVBoUw0+VuwVzF8awgv2FGMlAbDc+BBNhAx+iEGbO1NSxOfqBhYMyzs54Q902yPbd9eVV7kM5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xhIQ1SBclHKw+Q8c8AXe0Esq5oz+eGAWfktGJnFBl0Y=;
 b=kUW/fOxg/RaxOU9OcpHHwtA0AaecN5hBtrHo5Ddqm6SXm1JFBzJIGtmlYLPsmiGxsRG1nXtjPfK4P+FcyDrRJJBpplO/V6/3tYmZwo1sNRmgBGqOeVAXaR9eyugjvlkuAa6YYDeqasBFY5GQK1qyUAqYuhpInV99zqp3VCYfxWoQ0t2wmyW2Y7G+nTicpsJUwWm3wQVExhVBRpfzPHCMG37mHbmzTGcQvFPilJcaIUkOJTA5FLWpMQzWnLfT3bNtAPTYFvkJZOEl8oh9oxJEvYpwAk6OpN+GzGPIDoxT03DMIiEhIi717sWFQl+D3kbQqHUgVAHdllhlFEGDx6PZUg==
Received: from PAXPR04MB9424.eurprd04.prod.outlook.com (2603:10a6:102:2b2::13)
 by PAWPR04MB9765.eurprd04.prod.outlook.com (2603:10a6:102:389::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.31; Tue, 24 Mar
 2026 13:36:43 +0000
Received: from PAXPR04MB9424.eurprd04.prod.outlook.com
 ([fe80::671d:216f:d493:44ce]) by PAXPR04MB9424.eurprd04.prod.outlook.com
 ([fe80::671d:216f:d493:44ce%4]) with mapi id 15.20.9723.022; Tue, 24 Mar 2026
 13:36:37 +0000
From: Ioana Ciocoi Radulescu <ruxandra.radulescu@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo
	<shawnguo@kernel.org>, Frank Li <frank.li@nxp.com>,
	=?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>
Thread-Topic: [PATCH v2 4/9] accel/neutron: Add driver for NXP Neutron NPU
Thread-Index: AQHcrW0UFol7c/rrhUWH45PRn/N4EbWhjjwAgBw7vqA=
Date: Tue, 24 Mar 2026 13:36:37 +0000
Message-ID: 
 <PAXPR04MB9424461788159F730884F9F39448A@PAXPR04MB9424.eurprd04.prod.outlook.com>
References: <20260306-neutron-v2-0-3019bd8c91ef@nxp.com>
 <20260306-neutron-v2-4-3019bd8c91ef@nxp.com>
 <110dace9-3ff9-4750-813f-93c6827b105c@kernel.org>
In-Reply-To: <110dace9-3ff9-4750-813f-93c6827b105c@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB9424:EE_|PAWPR04MB9765:EE_
x-ms-office365-filtering-correlation-id: e597c0ac-3b0e-4f5d-6340-08de89aa5fcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|7416014|1800799024|366016|19092799006|38070700021|921020|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 
 4/KnLqZUXvPYBH4vN/okmUyXk4OPiEdhPT/NsEzNNnUeEtRCSe7kMYhFz19l8kfw3QYL9oMz7QfCuqnrAZZlyLBa02bwjhG+6w64gSemxrDa11d4r7pElS1UWSWcJqPx+7fVLQggY44IA1P27EvGJfMpeOOcniDlyXo4uhpSjndjhzOQOgWfpo41NScUKVBlk1wr9V/nipRnSon9j9VxoVZlfXdvt5HnhOjzQl96ThzXFw9Mor/I2t9Fkt+mtK2jMG1QiKC4a2z/iKwbSu8QfgPz5d67Jm1QSnbVvxeAGlFZR9d2D8BtGkv5nAB3o7o6qIlw7lLCz3VQpoEP3wqmCvIaX8IfWtxaZNZMyyqIry9E3UQfQOnwabeX+fj8QH0F9ep0ZaNkyfEi9CGdYqA7tzrDUkYKNXsxY0TkPsY/j9AvLK+445ua0C6Yx8KaLrM4vzzpGnj52f3dq7efWksEo1kCIU9j8Bx4wUgriMagt3kfqwrnFbHhVagIoj2EvDbmK3bIrujK0cH+zs0RAAk1LQP+ZTkGi2e+6SKxL4tDtoAeT9vL3pDGdb6Z40LFQj0XqZ13b23NWebU7bC3Lik+l3939vBbz9FOhbUzfcwfohgPufptsJ68yfM2HBlCz2P3lnFBD/3MonSUhLf3JxmNxnDerNSyjAVGNrYT9oRmvXV7v71OHDF7BjZlwNo1dErOgejocN8aClhinbW2Odv5nOqwih3NI4LJ2irUFXdL+hIm+BKVVlmePzwbYvusFqhXtOnhLDOL5gD18gPClGq3Dg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9424.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(19092799006)(38070700021)(921020)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?lwyAYR148TNzzl1QT8LGoqpuh5R1Y8Fnxf/cisCflxIqrC+9wPCdAjDqBP?=
 =?iso-8859-1?Q?nVV7ib5QnC/0fMCbsR60iZykLkqDj6f8XHYszh9e3i8fU7LD1vYj9KN+ES?=
 =?iso-8859-1?Q?lB7ONsv8KlhtWWiDiNMFCUX1glbpiCvqpvaSlCZ3t+8zdEtrwWxsiYE4e4?=
 =?iso-8859-1?Q?DKtILmqtKI4FnptguDETTbNorBFU/YXCC5PmWF0iN8cQSEwJx3hGeylERa?=
 =?iso-8859-1?Q?JjEQuZYQ/7WOKXXRe8oucPL/Y/DNK6BnFwssCNk3mcTjYzDF2RNzIczvli?=
 =?iso-8859-1?Q?QTnqdjaQTTyYC+UBxZwf7eYYYymC0gRdBMDGMDtfd/hqBQMSBk2jo58Py2?=
 =?iso-8859-1?Q?Ru03UmJjE8b4pin0Ej6ogTQSiRmDy9dHh2nSpyzO6Eg8HyM2U/E7MUsq/X?=
 =?iso-8859-1?Q?NQ/tAg+MugpfcSABb2fnPC0mmJ/d8SXbhAnddpcSmCODlQm3F5YJ29ZIzG?=
 =?iso-8859-1?Q?uIIDIk2QVol3q1LtJkYhhcVtPILsp4d1PemkjisXd+xeC90HdnH4rrfJC5?=
 =?iso-8859-1?Q?OcBc2paa78f8+BrrhtxbSK3RmeC5ul7FzEiEwnsF1obBLqOqIesfVRmiX+?=
 =?iso-8859-1?Q?nwVxYlbmYcOAMDfa5s5SpLHEoButKb3a+SUfSnRwMKijbyrck5oJkBou4h?=
 =?iso-8859-1?Q?Zb6qAsVF+TbmP4w+9rMiltKtEVvhDnoXV0d70J7RYLKJPOllclQ7hCVAIO?=
 =?iso-8859-1?Q?5pmR6vXw3oDBBnafxGYqWolqX3t+lm33SUPG8hprNXxF/xNFvy5jp5vUtB?=
 =?iso-8859-1?Q?W/u3qHuGx7pBO9RGCUVHMIlVW0qyzlDhPDhUbaJM5Gn501J/iYhKiuOKnH?=
 =?iso-8859-1?Q?Djttynq5+jtbpy+NCNUJjzHIC3/d+X/RKzXur6bCdMfG2dL7hF2dF9zDBK?=
 =?iso-8859-1?Q?Z6d7VjFl22BeETPhAaKqXe7lXA06/b7fhf82rhCVG/QJwhj4W9himfbg84?=
 =?iso-8859-1?Q?lVcZ8fX8ksrYy4OYx6P97ExLILtAuKx2QIhwKyJVvplPNPsD6V/mqeq+kT?=
 =?iso-8859-1?Q?Uh8c+3ra/PUFDp4dMKsBFMiy1LTO09vo6tcW0jDqUUI2SJyIGw65AwTRTO?=
 =?iso-8859-1?Q?Wya2PXcUATbQ1vorTuJM/zwy67AVgGqQIzNYaze4kmPsPtZhs9nimwPnBf?=
 =?iso-8859-1?Q?PJ0MjPWELC3GWJUFdYjjnNHdMqH4ZLcKU486qtLVilXdbUcUXzGeUYNhI6?=
 =?iso-8859-1?Q?KRoUsqN/bvIaSNEIySQoh46xrtgsW9j2g3V9sI9MApbDWANB0AOVwaAtUQ?=
 =?iso-8859-1?Q?z+gdKsOrlIlaPMZQsV8DZ6eQLuX55E2/Pu0AnJRsVBZITkglZ08sY/jnIL?=
 =?iso-8859-1?Q?p9NrapBuXLL2sPlKRALyfTH5CUwp8h2zEYRlRP20zwGcukvHlpbIWRS5Mt?=
 =?iso-8859-1?Q?6RgsTNCip6j4k9/D+Jin/aAERJDt26hWwWgPs0BBqizz1T4qt+uarHPMn6?=
 =?iso-8859-1?Q?AFMSHRZf3fIkBO658ZGvPEGWiF60gYkE9zgQxfatoPrI4Div5/lGhautJx?=
 =?iso-8859-1?Q?ejGZSPtT46Spz8flhf6Zm6ki6KSIZGZzBOssK0Ek35CbVqbYcuTHyc6cPl?=
 =?iso-8859-1?Q?6Bmj76szsDwNG6exCBOPruJ7lUYYdUo7Z7JgOFntcWafCeBrOS7YDlwylW?=
 =?iso-8859-1?Q?uSEcq/shYNeDoHiMmTWffCcF6YSvVvlqpCYBRu6V8GwRjjQKUNT2nQDbOf?=
 =?iso-8859-1?Q?IOocz4u8lIxMPpO80kH1D48xRsVrq3yEKtVvZlBMutI2OZeGFbYsvjMKGT?=
 =?iso-8859-1?Q?zEbYY19h3naUQqm/PquLhw5rWU0dFRDdIW4Ux6umX31GBaHAeS3Z1muVHd?=
 =?iso-8859-1?Q?H6H2Gosh0A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9424.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e597c0ac-3b0e-4f5d-6340-08de89aa5fcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 13:36:37.7720
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8Z2QEOs0bVPHY8QhX5+CeUgbdunAuougPCvGIpozEE2Xrd/fbRE6H4LmnFl9I6nXfMd8UDzkLxvJ0DwL9RC6vtiFR4QpdP825u6KnJLAK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9765
X-Spamd-Bar: -----
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WYJ5KBYCKFKRERQR52H4VZGOW5OOXG7S
X-Message-ID-Hash: WYJ5KBYCKFKRERQR52H4VZGOW5OOXG7S
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:30 +0000
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Iulian Taran <alexandru.taran@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/9] accel/neutron: Add driver for NXP Neutron NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IKYLLOKNOCRY67FXV55RGWVBO3M5KPVA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[nxp.com:s=selector1];
	DATE_IN_PAST(1.00)[651];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:-];
	NEURAL_HAM(-0.00)[-0.110];
	FROM_NEQ_ENVFROM(0.00)[ruxandra.radulescu@nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: A877D43137D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Friday, March 6, 2026 at 4:22 PM, Krzysztof Kozlowski wrote:
> On 06/03/2026 14:27, Ioana Ciocoi-Radulescu wrote:
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS index
> > 8a5b27b061da..f7a687eb6b54 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -19191,6 +19191,16 @@ S:	Orphan
> >  F:	Documentation/devicetree/bindings/net/nfc/nxp,nci.yaml
> >  F:	drivers/nfc/nxp-nci
> >
> > +NXP Neutron NPU DRIVER
> 
> s/Neutron/NEUTRON/ as everything here is in uppercase

Ok.

> 
> > +M:	Ioana Ciocoi Radulescu <ruxandra.radulescu@nxp.com>
> > +M:	Jiwei Fu <jiwei.fu@nxp.com>
> > +L:	dri-devel@lists.freedesktop.org
> > +S:	Maintained
> > +T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
> > +F:	Documentation/accel/neutron/
> > +F:	drivers/accel/neutron/
> > +F:	include/uapi/drm/neutron_accel.h
> 
> 
> >
> > diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile index
> > 1d3a7251b950..698136e12cce 100644
> > --- a/drivers/accel/Makefile
> > +++ b/drivers/accel/Makefile
> > @@ -4,5 +4,6 @@ obj-$(CONFIG_DRM_ACCEL_AMDXDNA)		+=
> amdxdna/
> >  obj-$(CONFIG_DRM_ACCEL_ARM_ETHOSU)	+= ethosu/
> >  obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
> >  obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
> > +obj-$(CONFIG_DRM_ACCEL_NXP_NEUTRON)	+= neutron/
> >  obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
> > -obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
> > \ No newline at end of file
> 
> You still have patch warnings.

Yeah, so the last line of this Makefile lacked the line ending and vim
fixed that on its own when I edited the file. I can add the neutron line
and leave the rest untouched, just making sure this is what you're
requesting?

> 
> > +obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
> > diff --git a/drivers/accel/neutron/Kconfig
> > b/drivers/accel/neutron/Kconfig new file mode 100644 index
> > 000000000000..37b8ecb49804
> > --- /dev/null
> > +++ b/drivers/accel/neutron/Kconfig
> > @@ -0,0 +1,16 @@
> > +# SPDX-License-Identifier: GPL-2.0+
> > +
> > +config DRM_ACCEL_NXP_NEUTRON
> > +	tristate "NXP Neutron NPU"
> > +	depends on HAS_IOMEM
> > +	depends on DRM_ACCEL
> > +	depends on ARCH_MXC
> 
> Missing compile test

Will add.

> 
> > +	select DRM_GEM_DMA_HELPER
> > +	select DRM_SCHED
> > +	help
> > +	  Enables driver for NXP Neutron NPU.
> > +
> > +	  Select this if you have an NXP SoC with Neutron, like i.MX95,
> > +	  and want to run machine learning applications.
> > +
> > +	  If built as module, the module is named neutron.
> 
> ...
> 
> > +
> > +	ret = devm_request_threaded_irq(dev, ndev->irq, NULL,
> > +					neutron_irq_handler_thread,
> > +					IRQF_ONESHOT, KBUILD_MODNAME,
> ndev);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to request irq %d\n", ndev->irq);
> 
> Drop, not needed.

Ok

> 
> > +		return ret;
> > +	}
> > +
> > +	ret = of_reserved_mem_device_init(&pdev->dev);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to initialize reserved memory\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = devm_pm_runtime_enable(dev);
> > +	if (ret)
> > +		goto free_reserved;
> > +
> > +	pm_runtime_set_autosuspend_delay(dev,
> NEUTRON_SUSPEND_DELAY_MS);
> > +	pm_runtime_use_autosuspend(dev);
> > +
> > +	ret = drm_dev_register(&ndev->base, 0);
> > +	if (ret)
> > +		goto free_reserved;
> > +
> > +	return 0;
> > +
> > +free_reserved:
> > +	of_reserved_mem_device_release(&pdev->dev);
> > +
> > +	return ret;
> > +}
> > +
> > +static void neutron_remove(struct platform_device *pdev) {
> > +	struct neutron_device *ndev = platform_get_drvdata(pdev);
> > +
> > +	drm_dev_unregister(&ndev->base);
> > +	of_reserved_mem_device_release(&pdev->dev);
> > +}
> > +
> > +static int neutron_runtime_suspend(struct device *dev) {
> > +	struct neutron_device *ndev = dev_get_drvdata(dev);
> > +
> > +	neutron_disable_irq(ndev);
> > +	neutron_shutdown(ndev);
> > +
> > +	clk_bulk_disable_unprepare(ndev->num_clks, ndev->clks);
> > +
> > +	return 0;
> > +}
> > +
> > +static int neutron_runtime_resume(struct device *dev) {
> > +	struct neutron_device *ndev = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret = clk_bulk_prepare_enable(ndev->num_clks, ndev->clks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = neutron_boot(ndev);
> > +	if (ret) {
> > +		clk_bulk_disable_unprepare(ndev->num_clks, ndev->clks);
> > +		return ret;
> > +	}
> > +
> > +	neutron_enable_irq(ndev);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct dev_pm_ops neutron_pm_ops = {
> > +	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> pm_runtime_force_resume)
> > +	RUNTIME_PM_OPS(neutron_runtime_suspend,
> neutron_runtime_resume,
> > +NULL) };
> > +
> > +static const struct of_device_id neutron_match_table[] = {
> > +	{ .compatible = "nxp,imx95-neutron" },
> > +	{}
> > +};
> > +
> > +MODULE_DEVICE_TABLE(of, neutron_match_table);
> > +
> > +static struct platform_driver neutron_driver = {
> > +	.probe	= &neutron_probe,
> > +	.remove	= &neutron_remove,
> > +	.driver	= {
> > +		.name		= "neutron",
> > +		.of_match_table	=
> of_match_ptr(neutron_match_table),
> 
> Drop of_match_ptr. You will have (or you have already same as v1) here
> warning.

Will fix. But how do I get to see the warning here? Tried building with
W=1 and OF support disabled but it didn't complain.

Thanks!
Ioana

> 
> > +		.pm		= pm_ptr(&neutron_pm_ops),
> > +	},
> > +};
> Best regards,
> Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
