Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EC767816E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 17:29:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9B67443DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 16:29:43 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2054.outbound.protection.outlook.com [40.107.220.54])
	by lists.linaro.org (Postfix) with ESMTPS id 284B13ED2C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 16:29:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=VW7ct740;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.54 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOKLSU9JeUmx8T2toFZ2EU5mmXfVcTQjkQ60SkoRabN3ZNQLtmcx6ueIdNyxTNNfUU6PcCA7nhN6es46AnugUmGB8ZiJrXm+Ct+i0RoPWPT1vAbMPbVhC3aBKM3KiqBlGQrpsePz89FOQryk3FpLTiLllqpKsp25IF+Tuz4d4QeIezTzzqD/ahs6QVp2KsdX/c8UpSZ2nSxFJN+fs8Vrez/6fTOPSqPUB3UkwRfJKO8T/4GAFXOuCi5RBdU7Ro7OEVSfGJ+yUln/g8u7uMO1ULPX5hmJo7JCHE+Yy0SRhAaCh29s5OrsRpCcT8sqJmyR1pHPOHs/MpDfxgwaDFy/1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mc5C1oaleI+xNwcX39Ed+rYtT21ctdN9Mk3L7TRuOpE=;
 b=Ep6eY6PhftQT3DlN5gWiWYF/QutN1Moi4BfFLSLijEM43nkDki/12cHy791g3lYIgGSLEJP8ygkUpE8P1hOSks91Fb0Z+c+OenQn/nCUNiMCFHsOnNtucz6RYetdFnyWSL1+6P4Du0Ith8Y5fI5HCyps7ZEW5hsm5NFD/HXbb1QCzkaS0nBpA5Dm7ktYi9iMjsSPCdK7n7bxCPlGm8YOEzalErmbvOksoTugc+cSFiTOs6j5qkruBoq7if/ij5VDFKEp9zmHXhDpA8tzPQlgl3B9YNi34aMutzy9lKotjHEPGpU4Ek3KjFtYNygeN3GzZOxPStGUUbXx69bG4mwLcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mc5C1oaleI+xNwcX39Ed+rYtT21ctdN9Mk3L7TRuOpE=;
 b=VW7ct740EXkOF2TftlktH89lOVTwxpeFb2kDKUU0T/mtEbta02mYSvrTeCU7mI4jEoxSkFU5ipqUcm6e0vkPgA2qc4cVZwKIPg/wm5gF/+1QW8a00oe8BqJMTb1uRtAEaG8o2hCvXCeup7K0mzyx0jBokgmJqJq/cL3/A4S0Nbs=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MW3PR12MB4507.namprd12.prod.outlook.com (2603:10b6:303:2c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 16:29:25 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::80d8:934f:caa7:67b0]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::80d8:934f:caa7:67b0%3]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 16:29:25 +0000
Message-ID: <1f4a1a5c-e0d5-7f0e-353c-daa89f1369ea@amd.com>
Date: Mon, 23 Jan 2023 17:29:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20230123123756.401692-1-christian.koenig@amd.com>
 <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com>
X-ClientProxiedBy: FR3P281CA0123.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::9) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|MW3PR12MB4507:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ab5578b-ba2f-42d8-e512-08dafd5efdee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	380nR07Vw/zJhCBJnyH79Bf323ERE3zaq95FwdQZec6fT+TYHVjwSSmxxFBBotci6VfkxX452bLxvndPhRtlvUKx5rMZnDNRWe0zJ3q3VdNoeol28FUSQLP9ScyhMd7MVyxl494yHzyrdzUNI5SBWlcvfCbehrY1rzQ/Xj9xXDL0d/UrCh9FGthTvTWjKELkxGVB9yO1aiYHdkld98uYRTx+re7o/a16FCX524GoeY837A+lQC10CamaCKatoIDLw1DLGby/5br/hFF5LrYDfOe/+GNuSM7/sU3aA+0zwPWYqIOx+UFOkESw2FYKHyrAFkXubKO4qhpeqmd5BTw355UkwSbj8f5frRSFuXP/q7zn3ORDCiW88qEPEzf1xbhKDkBf6jFmQVFA9ifiqXWCZM6ai3sj48usYfhsdQr8aXpyU+EkvuUn1x+Zs+mdemxpi4fa39wgGHyJWgqmgogjK7Ad23gMo35KoeB1tj55T9RSyEJJNjKlbBHLmFU4r3LssZlGqVgZWOOZZdsgHFsiMEbJswR9tdRcTw2gEUfVuwKVeV2+HDlXyyEyd/BaYwotbQFOiOy+pJfHR+4FqaXBe/VVPRCsgaW1el7Z0TqcTBNhaWXYuN77t+/7k2zvu96L3cq8SyS8Sy9D2A4FVh2oAnkSsMwkEN+xQkARo4BD0lywOotsG1lOdKWUgckMmayFwxcgKwU/E+8KywdvWaEA/aPG7e5YoRsEADYS9OSh2MYVuvM9aa30NYGK83VpsDurxYuEBp3eIP22TAB1iXC5/yapjNLw84gnP2wZSq6IKWm+NE+wGmcd7atdiHImSbIu
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(136003)(39860400002)(366004)(346002)(451199015)(83380400001)(66476007)(66946007)(66556008)(86362001)(8676002)(4326008)(6916009)(66899015)(316002)(36756003)(6506007)(3480700007)(6666004)(186003)(6512007)(6486002)(966005)(478600001)(2616005)(31686004)(8936002)(7416002)(66574015)(5660300002)(31696002)(41300700001)(2906002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aW5WY2R0cTc5aWhib3VWbWpDQ3pieERpVHkrU2tqT21BWS84QWxxcFlmSVFV?=
 =?utf-8?B?ZEQvYStWdUtxRjN0N0JNWlo4aG5sY3lFK0F4TUE5bnZNcHdTNGJpV3F3bjF1?=
 =?utf-8?B?SVRzZ0hTSm13cytGOFUzY05hdlNpdSt6RHFLVkMrUEJ2cVBURzRIL05IbEhC?=
 =?utf-8?B?N0tlNy9hcDNiYkJjY0dLTVBpSkw1OGp4aGswa1haWjdmQjBycG1raFhNVkxQ?=
 =?utf-8?B?MWlYQjNHZDdqdlRhRTNRTSs3UGxNb1RSUmlKREN6eWpSU0E3YngxdTVZZTcx?=
 =?utf-8?B?Tm02QmpCamZkKzJzZGpacDVpTjYzdDhTRU9CbFd3MEhpbGl5QURKL0VjTlMr?=
 =?utf-8?B?YVQ1MlpoSnN0eDVLdmNqL2k4ZGREZTMrM2VtL1dISkV2RjM1andXcjJ3ZGtF?=
 =?utf-8?B?YjBZd2NUT1FDY1A3QUZYMDE0NEJhOVFsVGVmTEdIL0VmM0d4SWI5Y3NQUnF4?=
 =?utf-8?B?SVR6TjE0ckgxN2Q0ZkczRlpmNHpXZW13b0ZzNjNrSTUvMHIyaCsvTW5UT0xP?=
 =?utf-8?B?dVhnOEFaUnRWblNDdWh2Q0FGM09qaXBPaTlqTVVWMTVqeHA1YXcxNENrcmJ5?=
 =?utf-8?B?RDFzLzhYMnJGZ3RjUy9kNzVGTzk0MW0zMURlR1UrZ2J5QzQxYUNhQU9CbTdR?=
 =?utf-8?B?dC8xVGpldmZsL3hkU210dUFwQUJFQ0hManJ4ZlFSR1FCeE0razQ1a3dlSlQ4?=
 =?utf-8?B?aWtYbWZHRlZuTFdNaHZtdjFlVHg5eGcrMFRhWU1ad0dpb1IxbHlLRkNBVVZN?=
 =?utf-8?B?RkRubXFVTUF5L3pqaFBVTmJsZmJiWEJrOVZyZzlWZ0x2OW5nV3Nzdm1VSHg4?=
 =?utf-8?B?THlOZUl2Uys3R3U5MnNSd0JFckhCVFV3eFA4RW9Mbzl0OHhkQU96SDE3RE9s?=
 =?utf-8?B?R2Fla2pGYXpFc1EwaWtyUTkxYWVFeVplWlpwelZiQk9PdG5rS1V6eTdicHpu?=
 =?utf-8?B?YzQxS1FycXpIeFBCNzFyRi9vakE5Rno0ckFtenIybkViVy9Ed0JKQldmN0xs?=
 =?utf-8?B?U2hMUk1PbFptOUt6V01GZTNlSHMvUDY0RUZsUGRIRVZ3Y3F4NTZLd0xyYVo3?=
 =?utf-8?B?WmY5RVRpb0FiUk9SQWd0VXVtenVKMDNZU1p0d3dyQU9FLzFtMzZMZlZLZ3d6?=
 =?utf-8?B?Q2tiSXphdEd6VG90MWdvWGYzZ2RkYnVmbjM1ckVrcnM5Ujg2Y1VpVXBXQlBF?=
 =?utf-8?B?MWdwTEpVMHlqZW5Na1VBWk1DUjBVYUNJdG5XOW1YS0M4cEg0S0JMeGxGK2M1?=
 =?utf-8?B?bXhqZUVycDNYMkd1UUFXZ3dsbGN0Rmo1RzA3OWFDblJiNXV2cG1MUHBOdHda?=
 =?utf-8?B?VU9wa0JzVXYzY2FYaE1SQ2R6Ryt0alpkaGlERjhXRnA5ZVVaTzBHRmovanVo?=
 =?utf-8?B?TlZNNkFOWlU2RzFkY2JsWVkyQXRvSzdpMmFsVGYxNlM5NVcvQTNxK1JKdW9U?=
 =?utf-8?B?ekw1WThpd0tWUlVnVnV3TCsxZWI0S21YbGlBTHpuWjRvVnRySHlWLzRrTHRP?=
 =?utf-8?B?TjNuSnhYby9vMWZ5M0dOSDFsTUUzN2lkTTNReEJjQ1RydXZ1cWVjRDBDaW9B?=
 =?utf-8?B?VVZUdXYvN0dKRUZEdk9rR2VwVDhOVGhOUloxVlJ3dzlEeTFtazFiM1hUL0U5?=
 =?utf-8?B?SHkvdG9tN040dmZpLzFKNEpyNElPeWVzQVhGTGJScVY0NE5taGdiZmUvZVIr?=
 =?utf-8?B?Y0FIK0o4cERwcTNOcEZQVE5DblJmSDRxeFBsUDhCOGZ6RkJHRjFsUnFuRXB2?=
 =?utf-8?B?aWE0TU9OZkRUa1pqM0pEMFdXV0RJZ0NZYTBkYUt2cHoxdFUvUElRaHF3WGIx?=
 =?utf-8?B?NE56U0hIVnczQndDZGJRUmFCMHliRTFOMzBWSkdVVTlwVG5TeDV1Q2huL0l2?=
 =?utf-8?B?Y3VQbzFKMHA0SlhtbEd6YlNuR1diNUwwRDE0TzRFdWVlVnU0QzB3eTJJRHht?=
 =?utf-8?B?ckNVZ3RCUFJzRG9GQXJGbUZGQ2kvbytzZUVjUkhBM3NIK1hZTHR2OWUwNWdN?=
 =?utf-8?B?bVFlWkFJcm1wUTg4MTlrbmdaMWNOd3o2SjhwOEYrWFM4aFEvUzg0QXZXQWtm?=
 =?utf-8?B?UFVLQTl2dDhuWmpHVnRWMHMxZFplbm9ZRkxBa0JKZW1hQXlFQnVicFd1cHcx?=
 =?utf-8?B?TkczY2VsQm1xRnpid1RBeGNJVUtDVEE3SEs1VHhnNVAwMkU0Q0k2RzdYV0gy?=
 =?utf-8?Q?On2u7no8uODc9ezXAKGlip5YbHcOa/S5eO904J+7x1m0?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ab5578b-ba2f-42d8-e512-08dafd5efdee
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 16:29:25.7578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8aKb7G8RMY1lhUOOq3DMKN31QO3s8bk+MDgDJyZv4dwZI1W5hZ3DHvp5QY5AIZI6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4507
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 284B13ED2C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.29 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,kernel.org,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.54:from];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: J5VWUFVGHEWSMYUDNGFT2MD5SK6Y66FW
X-Message-ID-Hash: J5VWUFVGHEWSMYUDNGFT2MD5SK6Y66FW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, mchehab@kernel.org, James Jones <jajones@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J5VWUFVGHEWSMYUDNGFT2MD5SK6Y66FW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDEuMjMgdW0gMTQ6NTUgc2NocmllYiBMYXVyZW50IFBpbmNoYXJ0Og0KPiBIaSBDaHJp
c3RpYW4sDQo+DQo+IENDJ2luZyBKYW1lcyBhcyBJIHRoaW5rIHRoaXMgaXMgcmVsYXRlZCB0byBo
aXMgd29yayBvbiB0aGUgdW5peCBkZXZpY2UNCj4gbWVtb3J5IGFsbG9jYXRvciAoWzFdKS4NCj4N
Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC84YjU1NTY3NC0xYzViLWM3
OTEtNDU0Ny0yZWE3YzE2YWVlNmNAbnZpZGlhLmNvbS8NCj4NCj4gT24gTW9uLCBKYW4gMjMsIDIw
MjMgYXQgMDE6Mzc6NTRQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEhpIGd1
eXMsDQo+Pg0KPj4gdGhpcyBpcyBqdXN0IGFuIFJGQyEgVGhlIGxhc3QgdGltZSB3ZSBkaXNjdXNz
ZWQgdGhlIERNQS1idWYgY29oZXJlbmN5DQo+PiBwcm9ibGVtIFsxXSB3ZSBjb25jbHVkZWQgdGhh
dCBETUEtaGVhcCBmaXJzdCBuZWVkcyBhIGJldHRlciB3YXkgdG8NCj4+IGNvbW11bmljYXRlIHRv
IHVzZXJzcGFjZSB3aGljaCBoZWFwIHRvIHVzZSBmb3IgYSBjZXJ0YWluIGRldmljZS4NCj4+DQo+
PiBBcyBmYXIgYXMgSSBrbm93IHVzZXJzcGFjZSBjdXJyZW50bHkganVzdCBoYXJkIGNvZGVzIHRo
YXQgaW5mb3JtYXRpb24NCj4+IHdoaWNoIGlzIGNlcnRhaW5seSBub3QgZGVzaXJhYmxlIGNvbnNp
ZGVyaW5nIHRoYXQgd2Ugc2hvdWxkIGhhdmUgdGhpcw0KPj4gaW5zaWRlIHRoZSBrZXJuZWwgYXMg
d2VsbC4NCj4+DQo+PiBTbyB3aGF0IHRob3NlIHR3byBwYXRjaGVzIGhlcmUgZG8gaXMgdG8gZmly
c3QgYWRkIHNvbWUNCj4+IGRtYV9oZWFwX2NyZWF0ZV9kZXZpY2VfbGluaygpIGFuZCAgZG1hX2hl
YXBfcmVtb3ZlX2RldmljZV9saW5rKCkNCj4+IGZ1bmN0aW9uIGFuZCB0aGVuIGRlbW9uc3RyYXRp
bmcgdGhlIGZ1bmN0aW9uYWxpdHkgd2l0aCB1dmN2aWRlbw0KPj4gZHJpdmVyLg0KPj4NCj4+IFRo
ZSBwcmVmZXJyZWQgRE1BLWhlYXAgaXMgcmVwcmVzZW50ZWQgd2l0aCBhIHN5bWxpbmsgaW4gc3lz
ZnMgYmV0d2Vlbg0KPj4gdGhlIGRldmljZSBhbmQgdGhlIHZpcnR1YWwgRE1BLWhlYXAgZGV2aWNl
IG5vZGUuDQo+IEknbGwgc3RhcnQgd2l0aCBhIGZldyBoaWdoLWxldmVsIGNvbW1lbnRzL3F1ZXN0
aW9uczoNCj4NCj4gLSBJbnN0ZWFkIG9mIHR5aW5nIGRyaXZlcnMgdG8gaGVhcHMsIGhhdmUgeW91
IGNvbnNpZGVyZWQgYSBzeXN0ZW0gd2hlcmUNCj4gICAgYSBkcml2ZXIgd291bGQgZXhwb3NlIGNv
bnN0cmFpbnRzLCBhbmQgYSBoZWFwIHdvdWxkIHRoZW4gYmUgc2VsZWN0ZWQNCj4gICAgYmFzZWQg
b24gdGhvc2UgY29uc3RyYWludHMgPyBBIHRpZ2h0IGNvdXBsaW5nIGJldHdlZW4gaGVhcHMgYW5k
DQo+ICAgIGRyaXZlcnMgbWVhbnMgZG93bnN0cmVhbSBwYXRjaGVzIHRvIGRyaXZlcnMgaW4gb3Jk
ZXIgdG8gdXNlDQo+ICAgIHZlbmRvci1zcGVjaWZpYyBoZWFwcywgdGhhdCBzb3VuZHMgcGFpbmZ1
bC4NCg0KSSB3YXMgd29uZGVyaW5nIHRoZSBzYW1lIHRoaW5nIGFzIHdlbGwsIGJ1dCBjYW1lIHRv
IHRoZSBjb25jbHVzaW9uIHRoYXQgDQpqdXN0IHRoZSBvdGhlciB3YXkgYXJvdW5kIGlzIHRoZSBs
ZXNzIHBhaW5mdWwgYXBwcm9hY2guDQoNClRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlcmUgYXJlIHNv
IG1hbnkgZHJpdmVyIHNwZWNpZmljIGNvbnN0cmFpbnMgdGhhdCBJIA0KZG9uJ3QgZXZlbiBrbm93
IHdoZXJlIHRvIHN0YXJ0IGZyb20uDQoNCj4gICAgQSBjb25zdHJhaW50LWJhc2VkIHN5c3RlbSB3
b3VsZCBhbHNvLCBJIHRoaW5rLCBiZSBlYXNpZXIgdG8gZXh0ZW5kDQo+ICAgIHdpdGggYWRkaXRp
b25hbCBjb25zdHJhaW50cyBpbiB0aGUgZnV0dXJlLg0KPg0KPiAtIEkgYXNzdW1lIHNvbWUgZHJp
dmVycyB3aWxsIGJlIGFibGUgdG8gc3VwcG9ydCBtdWx0aXBsZSBoZWFwcy4gSG93IGRvDQo+ICAg
IHlvdSBlbnZpc2lvbiB0aGlzIGJlaW5nIGltcGxlbWVudGVkID8NCg0KSSBkb24ndCByZWFsbHkg
c2VlIGFuIHVzZSBjYXNlIGZvciB0aGlzLg0KDQpXZSBkbyBoYXZlIHNvbWUgZHJpdmVycyB3aGlj
aCBzYXk6IGZvciB0aGlzIHVzZSBjYXNlIHlvdSBjYW4gdXNlIA0Kd2hhdGV2ZXIgeW91IHdhbnQs
IGJ1dCBmb3IgdGhhdCB1c2UgY2FzZSB5b3UgbmVlZCB0byB1c2Ugc3BlY2lmaWMgbWVtb3J5IA0K
KHNjYW4gb3V0IG9uIEdQVXMgZm9yIGV4YW1wbGUgd29ya3MgbGlrZSB0aGlzKS4NCg0KQnV0IHRo
b3NlIHNwZWNpZmljIHVzZSBjYXNlcyBhcmUgZXhhY3RseSB0aGF0LCB2ZXJ5IHNwZWNpZmljLiBB
bmQgDQpleHBvc2luZyBhbGwgdGhlIGNvbnN0cmFpbnMgZm9yIHRoZW0gaW5zaWRlIGEga2VybmVs
IFVBUEkgaXMgYSBmdXRpbGUgDQplZmZvcnQgKGF0IGxlYXN0IGZvciB0aGUgR1BVIHNjYW4gb3V0
IGNhc2UpLiBJbiB0aG9zZSBzaXR1YXRpb25zIGl0J3MgDQpqdXN0IGJldHRlciB0byBoYXZlIHRo
ZSBhbGxvY2F0b3IgaW4gdXNlcnNwYWNlIGRlYWwgd2l0aCBkZXZpY2Ugc3BlY2lmaWMgDQpzdHVm
Zi4NCg0KV2hhdCBJIHdhbnQgdG8gZG8gaXMgdG8gc2VwYXJhdGUgdGhlIHByb2JsZW0uIFRoZSBr
ZXJuZWwgb25seSBwcm92aWRlcyANCnRoZSBpbmZvcm1hdGlvbiB3aGVyZSB0byBhbGxvY2F0ZSBm
cm9tLCBmaWd1cmluZyBvdXQgdGhlIGRldGFpbHMgbGlrZSANCmhvdyBtYW55IGJ5dGVzLCB3aGlj
aCBmb3JtYXQsIHBsYW5lIGxheW91dCBldGMuLiBpcyBzdGlsbCB0aGUgam9iIG9mIA0KdXNlcnNw
YWNlLg0KDQpXaGF0IHdlIGRvIGhhdmUgaXMgY29tcGF0aWJpbGl0eSBiZXR3ZWVuIGhlYXBzLiBF
LmcuIGEgQ01BIGhlYXAgaXMgDQp1c3VhbGx5IGNvbXBhdGlibGUgd2l0aCB0aGUgc3lzdGVtIGhl
YXAgb3IgbWlnaHQgZXZlbiBiZSBhIHN1YnNldCBvZiANCmFub3RoZXIgQ01BIGhlYXAuIEJ1dCBJ
IHdhbnRlZCB0byBhZGQgdGhhdCBhcyBuZXh0IHN0ZXAgdG8gdGhlIGhlYXBzIA0KZnJhbWV3b3Jr
IGl0c2VsZi4NCg0KPiAtIERldmljZXMgY291bGQgaGF2ZSBkaWZmZXJlbnQgY29uc3RyYWludHMg
YmFzZWQgb24gcGFydGljdWxhcg0KPiAgICBjb25maWd1cmF0aW9ucy4gRm9yIGluc3RhbmNlLCBh
IGRldmljZSBtYXkgcmVxdWlyZSBzcGVjaWZpYyBtZW1vcnkNCj4gICAgbGF5b3V0IGZvciBtdWx0
aS1wbGFuYXIgWVVWIGZvcm1hdHMgb25seSAoYXMgaW4gYWxsb2NhdGluZyB0aGUgWSBhbmQgQw0K
PiAgICBwbGFuZXMgb2YgTlYxMiBmcm9tIGRpZmZlcmVudCBtZW1vcnkgYmFua3MpLiBBIGR5bmFt
aWMgQVBJIG1heSB0aHVzIGJlDQo+ICAgIG5lZWRlZCAoYnV0IG1heSBhbHNvIGJlIHZlcnkgcGFp
bmZ1bCB0byB1c2UgZnJvbSB1c2Vyc3BhY2UpLg0KDQpVZmYsIGdvb2QgdG8ga25vdy4gQnV0IEkn
bSBub3Qgc3VyZSBob3cgdG8gZXhwb3NlIHN0dWZmIGxpa2UgdGhhdC4NCg0KPj4gV2hhdCdzIHN0
aWxsIG1pc3NpbmcgaXMgY2VydGFpbmx5IG1hdGNoaW5nIHVzZXJzcGFjZSBmb3IgdGhpcyBzaW5j
ZSBJDQo+PiB3YW50ZWQgdG8gZGlzY3VzcyB0aGUgaW5pdGlhbCBrZXJuZWwgYXBwcm9hY2ggZmly
c3QuDQo+IGh0dHBzOi8vZ2l0LmxpYmNhbWVyYS5vcmcvbGliY2FtZXJhL2xpYmNhbWVyYS5naXQv
IHdvdWxkIGJlIGEgZ29vZCBwbGFjZQ0KPiB0byBwcm90b3R5cGUgdXNlcnNwYWNlIHN1cHBvcnQg
Oi0pDQoNClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIgYW5kIHRoZSByZXZpZXcsDQpDaHJpc3RpYW4u
DQoNCj4NCj4+IFBsZWFzZSB0YWtlIGEgbG9vayBhbmQgY29tbWVudC4NCj4+DQo+PiBUaGFua3Ms
DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8x
MWE2Zjk3Yy1lNDVmLWYyNGItOGE3My00OGQ1YTM4OGEyY2NAZ21haWwuY29tL1QvDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
