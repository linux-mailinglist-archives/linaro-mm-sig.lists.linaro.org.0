Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D68E5537469
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 08:37:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0387D3EE6D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 06:37:34 +0000 (UTC)
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2097.outbound.protection.outlook.com [40.107.215.97])
	by lists.linaro.org (Postfix) with ESMTPS id 63CE13EE6D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 06:37:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+eqaS+4e9I7rElH3rR0QXxg29ZS0unYGx1QjCxU4jKYk0ejREfLNr8B5XfQY5DvANop+Ic3gEi0Bd2ulb6c0Gg1UNTbXgXSgeqd4xW86fNHm9UTqVThHqZPsya4krGtckfYi8DwZLI6XcspNVVTZuE9YryQBSc5lrXiedwsQ853psJp+F9FGathze848AJrvYjDgGnrvTG5WzjNhu8V2BD1J1yzhuIpIJuPsaiatYa380PpYWo4XkbuWxy8+pEZhxfkYNx3iIuES5qUsa/gDacCzDZUcpYgDjAp/Snv01sEvtyQ+YHSMt5QXTP8xTkXi3TNSDnePXclqOFjiT4Oxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nWaZbUnoVB5WZ9DL18fZPAx20Foj6PEYTR0iAKNqUzg=;
 b=TlR1EqvlVRbkwxRMr8qjXK65dNxPur1MxQrqKKpI4fTErvuLK7GmEKEG8yf6zSkFN5gEjTVx87VIYRTdNE4fKrlN+W6dfiMd3QeVWQo5f/8TqpGiRIeR7Zu1ERAPVbmoBqjPN1YcpMTIng36+dzDk2ir5zkZTDRuhSmeuiOxs1bd2FlrIldJUHt8+YzMFqObBzcFH82pIDH5MlxQOE0atWhpZLa4bx8OJ7ho8jzJby5xzpvh3A+b+3H97nkBPjktwGv24Q1y8Nnkkz/H75nFtMg721+ybju6hX45yzOAAoQFe3gi5nN3+Up7KGIMjltgwj2ANzdNyXXHUI72Qb1zpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWaZbUnoVB5WZ9DL18fZPAx20Foj6PEYTR0iAKNqUzg=;
 b=L3JDWjc5zXfHCymo/ZSLBBT9VSQALaP9d2tAdmn4H95vH6MoNdCukpgJaVxlk/1LiHITUCj8VArAvwQv+OY9xXZ7n5Eox+l8E4BF6aVO20qPzQlbY1xtx/20/4FnCK3dbEs2+oYdooGos3j7CqMiYhY1FrQrozUT9ugxhuU2TYnF8LEispP7IjIhJWVQbJrJ4Av49cEmaQrH7kDyvvWfbf5L6i0aRb/Dqs8FyP4CR9eLnKxgNnUBcR61sQ56eVuK0O6GGfYMjQoR4+vrdDJTSwFruQr9p/vYGniqZuwGhhICHh3G40C+NLmI8n1DjC3qV3mGro/mC69i204ePV0+6A==
Received: from TY2PR06MB3213.apcprd06.prod.outlook.com (2603:1096:404:97::16)
 by KL1PR0601MB4796.apcprd06.prod.outlook.com (2603:1096:820:a3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Mon, 30 May
 2022 06:37:25 +0000
Received: from TY2PR06MB3213.apcprd06.prod.outlook.com
 ([fe80::7847:b601:7d4a:1625]) by TY2PR06MB3213.apcprd06.prod.outlook.com
 ([fe80::7847:b601:7d4a:1625%7]) with mapi id 15.20.5293.018; Mon, 30 May 2022
 06:37:25 +0000
From: Neal Liu <neal_liu@aspeedtech.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>, Felipe Balbi <balbi@kernel.org>, Sumit
 Semwal <sumit.semwal@linaro.org>, =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?=
	<christian.koenig@amd.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Li
 Yang <leoyang.li@nxp.com>
Thread-Topic: [PATCH v5 2/3] ARM: dts: aspeed: Add USB2.0 device controller
 node
Thread-Index: AQHYblFwkNTSfgr8wUWHa8m4woyq0602rC7QgABVqYCAAACM4A==
Date: Mon, 30 May 2022 06:37:25 +0000
Message-ID: 
 <TY2PR06MB3213095E11D468425A30C37E80DD9@TY2PR06MB3213.apcprd06.prod.outlook.com>
References: <20220523030134.2977116-1-neal_liu@aspeedtech.com>
 <20220523030134.2977116-3-neal_liu@aspeedtech.com>
 <TY2PR06MB32135A0DAA9F152E2498CD1C80DD9@TY2PR06MB3213.apcprd06.prod.outlook.com>
 <0c08eb44-285d-975d-ac6a-f55ccfb34420@linaro.org>
In-Reply-To: <0c08eb44-285d-975d-ac6a-f55ccfb34420@linaro.org>
Accept-Language: en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa1f3b17-fed5-463c-eefa-08da4206dc2f
x-ms-traffictypediagnostic: KL1PR0601MB4796:EE_
x-microsoft-antispam-prvs: 
 <KL1PR0601MB4796D97DD76F9A02127D5EBB80DD9@KL1PR0601MB4796.apcprd06.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2rQQXvsP1B23TTOd5vtwG+WVEEVhCPUjf7Ls3Ulz75Owu1mJ6BDu6GUlYHMHWZE6A/O8lCEe1whnFwv+YO6i4sHT2laLpdFBr/OqZODtvO3CsrnBsnolfZR4isNqqa2Iqwf8oYX+0ytLiVM937TI4h8geQ4z/T9a7gknOCcyrXyyLF5zXeBJkAEoMMlR/lvKXN39rfb5dDRyQnx9a8QqVH1tmbjd4a3ds85ZHUCaSwguJyx+4MMyr8q1Qnn81YJxh8wuG7UCxfN/bzRBsDYvyME0IplFu5w5XfvtohJYLJ/3Z+DR57iahLl17WbERstDq+lVDUfEPQ+yaTQ50hAsoGqmH//9x3y9C43XpMd+49FNOhJBRHRvzPIQ2t3Ji5Zv9ExmBTqeSB4Yo+wLu+48i6kSgLMuTkpJsQYaOx2xWUc3fq035i6vqm4+LLF2mfb6kZG1PzjpYcD0Uk1UBLe5agaOahTNMCVbkDOTlJvltbJtZJw2RYMYQGVa7AajTGK9XxaRTb2Ohux81/ZHLOTJWPOzDwwVm4WBsfeX6V/WqtIBKDtkJ4CuIN+/NP8m7cKWvl7onnbDj3wfFLagWhKfBdO6feuEoDgRiY2YGVxvfl0BqNLjZrDsokIgkQDu5XPuFvtlXXcH/hOvFJ0YS0bnB179n+crPFYRcBYpQI6lbybIHrqmuGm3Y6dvY9yWjhOCZH+FNOjxpOqf1ZGwx0ud4xDnKDlusGse5d3mUIQWxYg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR06MB3213.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(4744005)(5660300002)(33656002)(52536014)(66946007)(64756008)(53546011)(66556008)(8936002)(7416002)(6506007)(7696005)(86362001)(9686003)(26005)(2906002)(71200400001)(921005)(122000001)(38100700002)(55016003)(186003)(83380400001)(38070700005)(110136005)(316002)(54906003)(4326008)(8676002)(66446008)(76116006)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?amxiMkFqdkQ1U01KVUNEOFhZU2Z0eEtTVThuZEN4NmNadlJnZVdvVmpVbWNQ?=
 =?utf-8?B?OGlZbmgwVEF3YlNyVlB1TzVxRExNZTVxQkc3UnhBOHZHRDFOblg5K2pRcy9Z?=
 =?utf-8?B?QXI5MzhuVjBKY0dyR2lNQzFTaHZJa2kzOUhtUXdFQlJ1Zjh5NitkVjBMYW1U?=
 =?utf-8?B?YUtOSkcza1lQWTVuSHhmVFBTWWlMU05HR0p1RjArZTJucGhFcUNkRXdSbktI?=
 =?utf-8?B?ckk4VmNIUDFobnhhM2NkSGUrc3hRVFN0N1FtMS9IVGRPeFNKdzhMb05tUGxp?=
 =?utf-8?B?bmY3bnZoK203VlZIMWhuRVJEY1JuSkkrQ29ObVU1eWYzV3ZFZlBaUjdPeU9L?=
 =?utf-8?B?eVJpVjQvVndYSlU2eDRzVnIzN3VpdFJYMzZMbHFNZEdkZVVtRGhLUlVHa2xR?=
 =?utf-8?B?aUZ2eVRLMXhzZnJ3Tk9IRlY0WmlsT0orY3ZENFVQUE5kVDN3WUJWdGRyMFho?=
 =?utf-8?B?cFJEVTdnelFuRFZ0N1FpeU5QeVprbTBJQmhNQndhakFFTm5xS2QrN2w4Q2VY?=
 =?utf-8?B?UGJ6MFN0L0NXUm1wWUFEYXZ5MHdOQS9SdUlUU1BoMUhQYllqUlkxcUJnbEN2?=
 =?utf-8?B?eHpLd05QZWw4cklHd3FyTHdrZ0IzQXpyZ002K0RhUGJxeE9tMUpQclJtRFQ2?=
 =?utf-8?B?NGVJNkdvSFl1QUpzZmZiVFFCZ3RZWHpTSFg0VnJ6VkcxUnRmeXhiVVRNS0g5?=
 =?utf-8?B?SGlLM0ZmSVFiRE5SSVpnTWUzVHlkWjdqTmdsV2FtSENTTVk4VmVYUE5Temt3?=
 =?utf-8?B?OW00YTJzRVFFNkk2U0gyTFlDMTZsdGhMdDlvTkdDZFc0TG0xcWNucDZNRCsz?=
 =?utf-8?B?WmVLL0RodElqZzBVWXRVMmttRVI0Mm5VWFh0RUZQcnl3UktKNHdYUVdySGJJ?=
 =?utf-8?B?KzliY0pMK1U0YnBSU29BQmNYM2tqVmQ3TVVmeXRUc29kU0laMkMxa3RJL1dy?=
 =?utf-8?B?UlprdE04TnhLSlQrMDdYYzU5aDBoVlR6bmZEd0NnWWtuN3Z5UzZlaFFVbmRw?=
 =?utf-8?B?ZmFQNWV3RE1Sdlk1MVRVMS91cENXcWZUSiszREFGb0gzSXo3VGs4blVyTGgv?=
 =?utf-8?B?Y2xqMUFhM0p5dmpoZGR5RE96WTVYS1BYVlRhZDVpSUFMa3pOclJrRnNvWmxR?=
 =?utf-8?B?OWV3di9mdE15bFo3emlKY0lTV0gra1ZyeTJJOUR3UDFuK1RDUFczaTBFZUFO?=
 =?utf-8?B?R0xKcWN1TlNlWXhPY1FXWWtKUGg1eE0yV3RRYS9JdlZBeW5paWpyM3JneHFh?=
 =?utf-8?B?S20zeHM1THMrcU9kSGs2aDdJVVorNlZYcjB0NW05NG5xalAzdm1hTnI4SkFP?=
 =?utf-8?B?OFVVZmFpQk8reHJzVTAyK3hwU2tYUEtyYjMvUU1KWGsrSTdqT0wyRHZjdmdN?=
 =?utf-8?B?NU1Xa3ZMc1ZEempYUlBFM1ZxTzgyZjQ5Z3NqRHBUeTdmSURkdVdYODNXVjU3?=
 =?utf-8?B?OFdWVEdlY0RjMDhDdTZyeUFYLzdXcmMrL211WFRjWXcwQUZnMko0RFJnQzZ5?=
 =?utf-8?B?aUYxZ2hqTHd2anZyZ2Q5R0FBTmJ1RjlTL1IwdU95S3haR0NsS0p3cnhQa0NJ?=
 =?utf-8?B?Ull1QmtrMFM0dm5MMUpDYUdvTWR3eENzVUNqdjN4dUc0YjFLdmllNmpWN3Mx?=
 =?utf-8?B?WHBZNmM4Z3VpQnBGYVFacXZ2UjcyR08xNjljUnlmZE5DVVcwdFNIaDJSOGc2?=
 =?utf-8?B?R084WVNRVXIydDB4QlNZL0RxZk1uL1JoT05relR3eGV6VnVMbzJyTmczcVQx?=
 =?utf-8?B?RWluaVpsZUJQSFFrelVJNnkrbGE2dzNyNWZ1WTVWQ0ZaakMyMG9ySFhCS0hy?=
 =?utf-8?B?Q1lwQnRBcGRkdWRoMk1lU1JJeDhod0hiMzJGMUYxSnN5c0N1MlVkTnBaSGVE?=
 =?utf-8?B?MHhVU2VOS2pFTG44V1BjcFp2TjZvV2UwZ0lFZzNvWExKMVM1VkdsTUUyV2JF?=
 =?utf-8?B?QkRlSXdjWDdaVnlpOTNMVC9vZzNzT0xzRkE5S09GTEVhUU9PZHlPQ0VKOHo1?=
 =?utf-8?B?RTY4QnRTL3dpZmR6NWM0U0Y0STdoWlhldWFkUXhkaktVcEZpdUx1bzEvRDA1?=
 =?utf-8?B?THlZcUJtb05OazhUM3BNbWprZnpoV2EzcTB5WmdrNkRvVGw4MEhDQ0FPQzA4?=
 =?utf-8?B?bnE5dnRFRnBLeEk4UytsU0RVTjhuaWdLRU0reTViYjhENk96WjlEVlRkTXdj?=
 =?utf-8?B?UTBLOTMrSXIxN1dYa1I1b0lzMjRBUDBPM1ltWExDOFVMa0daM2FyS1FnY2s0?=
 =?utf-8?B?eWtJNUw2aWpjMGsxRWMzUnprMlozWG5zY3IvOWh4OXpFbCs2WGdCbW1ob25H?=
 =?utf-8?B?a0VaTlFybXNueWpDRU92UjY2bzZnZlVrc3NSMnZFMk5CcHZBamY5dz09?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR06MB3213.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1f3b17-fed5-463c-eefa-08da4206dc2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2022 06:37:25.7243
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9oXOsr/lw0feV4teHSQakQ6Vw2w9xqqJlkkn822yEmt7X9iAW1F6f22/zQcT7UZwfBexKLbyqEFTu0dEhJK41g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB4796
Message-ID-Hash: JTQ4GGXRLIV46EYRKA4KYNALVKRHFL3Y
X-Message-ID-Hash: JTQ4GGXRLIV46EYRKA4KYNALVKRHFL3Y
X-MailFrom: neal_liu@aspeedtech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/3] ARM: dts: aspeed: Add USB2.0 device controller node
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBMCT7MOWCUQZKEC2EAIPBSOPIGL67LR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On 30/05/2022 03:27, Neal Liu wrote:
> > Gentle ping on this path, thanks.
> 
> It's a merge window, so now not much might happen. Please resend in a week.

Got it, @Greg just told me. Thanks for the notice.

> 
> >
> >> -----Original Message-----
> >> From: Neal Liu <neal_liu@aspeedtech.com>
> >> Sent: Monday, May 23, 2022 11:02 AM
> >> To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Rob Herring
> 
> (...)
> 
> >>
> >> Add USB2.0 device controller(udc) node to device tree for AST2600.
> >>
> >> Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>
> 
> You don't need my ack here, but anyway FWIW:
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for your review !

> 
> 
> Best regards,
> Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
