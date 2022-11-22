Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 682BD63428F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 18:34:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69A743ED8F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 17:34:15 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2056.outbound.protection.outlook.com [40.107.244.56])
	by lists.linaro.org (Postfix) with ESMTPS id 6A6463ECF8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 17:34:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4CCAlNEC;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.56 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Var9nPFJoY7ID/zt+w0h0XixJdiFN/Prlu35fcTM/U/8EOoAz+bOBJ1ytaCGHNpTUNeb2gS/Se6lY9ZKOK1qGG4G9eb+CANGlidCW11XfMA75h+a5otY5Co85OPlIPflZikgIrkGy6syJok0I3vb2jlGcTDjZhdDA7eZTCC74PhkZMWb61xCC5NtN7R9uQKML3jLgbuMMw6RD++nfd42ydB0W23Qv4UzqbZjXhSvVIfr3HCTHzpPMfRXlJlm6/bB8TySHG44ugGqfTPTTL16uoVefF43F4/1IE6U7LGyy5Z/werDlXDeHRqwWMrhz/c/NbCddzSKeu8LVvAKM56yBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZyF1/EBFJrzggmv3EFSCf3/3JGGKBSzjuT2dTVGIfw=;
 b=bJk7BovHNcW4lu6C5DvWr559IBEtPE5EN4k6NAxHwrDDbTE7zv4o4Lw5FXC3prADw6UtbR6o3nUBM9GZ8xHkGnBHdMbDmEBHySHSOea30YjpPhzW+iRqQZzi7BeF9gLMPLS6yvnx1JDpCKTlPP7dB7jVnzkTv+Ns0xXT6769esn3pEA9CN22s0Jzlzn3fBGmAIaren297+F6C6p/WY3Xdzq/zD/fpAvo/ozdkn+9c4VedHotyTC04UKILCmHZpDii2oYhkQmZQdaXIMmgLBLEgFeKp/NXzMlk5BhRv25jhZN/OXP5NUBV5SdJNqS71siX+JZngMskKc1NzBNAt/2FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nZyF1/EBFJrzggmv3EFSCf3/3JGGKBSzjuT2dTVGIfw=;
 b=4CCAlNECReZpYdeU18l91mwjxuGHI7oxlXuL1pTs6n3s7EcujTVKkbac73nNUfI1njj1NL6AjdiEj4wA1QKsldt7/3nf6PX/mf7SEswlwS6E9dsVQ/RZqiW8zA64OC6nGUpOESVxnxX4UI9wB0w4RTKEHnNwr9fDl18kl/yHZkY=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH7PR12MB6883.namprd12.prod.outlook.com (2603:10b6:510:1b9::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 17:34:03 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5834.009; Tue, 22 Nov 2022
 17:34:03 +0000
Message-ID: <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
Date: Tue, 22 Nov 2022 18:33:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>
References: <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
 <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
 <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
 <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
 <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
 <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
 <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Y3zeYnufgXJHQAbN@phenom.ffwll.local>
X-ClientProxiedBy: FR2P281CA0137.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|PH7PR12MB6883:EE_
X-MS-Office365-Filtering-Correlation-Id: 067dd5fe-8396-4a0d-21e5-08daccafbfc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Oap5opGV54itvaEuyP6ZCeQ69S+oeO0BqEyaPCl7iM1GtX+6HTzm0CHDUYD+71OWiEYF0Aqo2G1m4GjzAsReZmBPLeJyfYbF1unZnQ+LqYp9inGrWriSKbX42v+VxeEMQCWJIE/nkpfcVnhZd14hgDNIwa6UYGFg035lt+f0b8Bt5arQXCzrVKRd575tt/zyJPXag6DvHn6hM3epF0ptnc9F/07cQHWe/hkxPxT8gfZW8Ytg4UClcCElGrGkNTMswmjj2sAbjJZ7Ga8Kw/8IgOMFWjsrVaJrT6MOK5wCBur4SNc/6EyPENC32iqEi1I/CVwL0RqFa67Tv0v29Wy1M3l52vGys10WTO1slNRMATTATMBhuNeNcQ5nBu2MR+6FAUfs6zzZ5qDD5ro10JznhiHeqa8Gugf3GFjoPv6KbqRKUEViR/iwtvwfvQ14BUxz8VR+oKwK4MYIGywkIatDQC0VOAcnlJWbVCnHYmDyI37OmeJAppfYjeSM1p+uqTFB+KjEHM2Aw6mGp5+yaoKsRGooZMGyUk8UR6EUmRUITZqEs8z1P7eatRI/nrG/J30ihJNfSwdz4cmBvJpIxgbtAgZrOojW6Wst0K/jIov0wWEUi9phxOPGxi8myS++E+pLtirQU8+4Os9EI0HVUv6NFW6Xr70zjIwtk25r9alsD0ChpROxQroYlSKoWfIv8NkpVfCUoiNIkeQmkMXO4WojmF/IE/ddfi0mK217cAhkeaI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(451199015)(6512007)(2616005)(53546011)(83380400001)(186003)(66574015)(38100700002)(2906002)(7416002)(5660300002)(6506007)(54906003)(6486002)(66556008)(8676002)(6666004)(478600001)(316002)(66946007)(8936002)(41300700001)(4326008)(66476007)(110136005)(36756003)(86362001)(31696002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTRlT0c2dGpNcVhZZVVJbXFidlBXN3NqUmozLzJyejhtNzNoYThGS1NJdmZ6?=
 =?utf-8?B?QUlVWHRxbnJXYUFBU1h4WW0vR2NDUFhDblk0dnZzUDhDZ3BqRXRxZTFSV2VN?=
 =?utf-8?B?M0lDTkVBalFRb3ZrUFYzaFhDcmkwRGlpajhNTndqMDZmOElFOUVEaHRWYXg1?=
 =?utf-8?B?Qk8wYjM3OEZyMlRHSm9yaTRzMWNsenpxM2ZyNGlkY3ljT0xYUzJqU3h6ZzBo?=
 =?utf-8?B?UTdRUHhUbVlrTUNtK0haZXppRmxsdWRySEVGMHg3UEEyTjJXQ2JFTjM3SUhq?=
 =?utf-8?B?a2l3SkIvRVFCclZGa1FFejVraTVhbmhGaE1KNFhoM3lnOE54WXdydmlOL3lt?=
 =?utf-8?B?L0xzREFOekJaZnZ6bURQK1VCSVRpb0dxdXBIbmZDS0VqMkJOcmQ2OGRCeDIw?=
 =?utf-8?B?dkJhSFdkZnJnV1NXSStDQUF5WllMRGI5eXZvOTAxS2RweUVPd2F4QU5FK29o?=
 =?utf-8?B?YkpaU2ZrV3pxMWd6S0hMWm9ZYTlsV05GbVdHcnB3SDhMM2RMejFzQ3FKaXJM?=
 =?utf-8?B?SVVLUkJVM1VOSk1yV0ZDNlJ1S3luNE0wMEhqTXFVaHdTL1RHajVxT09NdXk0?=
 =?utf-8?B?ZlIwaDFIY3d2MDFBOWRMOXIxcllKa2hLS201OUNiLzdTS0tIbEh0OHErZ0JB?=
 =?utf-8?B?UlYwRzRBSjVkODVoWG12ejgydkJVNjM4Y2ltNTNZZFRaR3llZFZKcWRsYWN0?=
 =?utf-8?B?OEZHMVVHVEJMaDcrWGhxbXdJRTFDNlg0ZDJnb2k3Zkw3T3krVEJWV3g2ZmJV?=
 =?utf-8?B?VGZ4dUtrRFk3KytlWTNuejVYZnIrQVVEZW9GWm1jNVc2eU9EOHJ6TUZWOUor?=
 =?utf-8?B?d21LaFJPbTYrblJtblJuUW1zRk1RZVRYejRoaTlNdGdzL3B5S3U0MXFGZ3lP?=
 =?utf-8?B?c2xTeXMrenZ5Qkc5ZCswMVBLRzN0cGdOc3UrZEtBNWlnLzc0UmJLa1RkcTRL?=
 =?utf-8?B?SjJSaVp3MDUvMEMvUUJZQzhOQktzRzV5TkEwMHBzd294d0twWjEwZU1iQWZR?=
 =?utf-8?B?V1MyNjRkMXJnWHJRUU14NE1mWUw3NDVzUEJWZGIxUEozMTU2eTJ5bDZrRkk0?=
 =?utf-8?B?Yzc2NU1RblM4S01ub01Oc2Q1V0M1MW4xbnN2WnFqSVE4Sm03QzlBNlU4MmdT?=
 =?utf-8?B?OUpoT1pUSktBeWNXWEFGSFlyYks1eUkvcUVxU0pSeG9wNFNKM1JDV0Rsb0VX?=
 =?utf-8?B?UG8zejZqeTVoa0YzUFBhT2JVdXdydVF6U1J2WDB3all0TSt1VkVXcjkxTzFl?=
 =?utf-8?B?TlpLQVZxOUEyOElDcHo4WFFHOXI3ajFJN2tEbFl4RzhtS3djWW1Sdk9aT0F2?=
 =?utf-8?B?SHlsZDRGWWl4TTJBVmtZaUZHVXpqRFgyRnNzbEt6V2I1MGNZZU5NUUxkRUtD?=
 =?utf-8?B?NFlHQjFBTHplamJ0VEZBd1E1UFBJVnZCQXNwcHRNS3ZZTUtTeEsyaEp3V3Ba?=
 =?utf-8?B?YXdIclZFbUFJS1ppbnROZDJNUHZqN3A1Y2Z2K0JuQ0h5bWR5aHl5Y0lXNkwz?=
 =?utf-8?B?UjNod1d3NjFCaXFZUWh6bE9wT3JPRjJKc0duNkcvMEp1NVlFaXBuMkJxRkpT?=
 =?utf-8?B?WVpNQkF2R3FSdzlFenB0R09wMVpIODZxWlZnbi9jdWl2OU5jQ2xEYVlYaXJD?=
 =?utf-8?B?VTMzWmZXZmxDSklRYjZXaDM0UE1DVkJacGhUL2t0NDNFaE5UUXhGVWpCd3lK?=
 =?utf-8?B?MWgxWFRzUzV2QUlxMUhoRTVvRUptRE1tZUt4UWthazhhTzJUdldjZGdNZGlh?=
 =?utf-8?B?ZHdSMWFsQVBKV25LNWZpbitteUNPYVplT3UvMDlKOUc0T3RXODBQVXFxTTZF?=
 =?utf-8?B?TDNBaUdoamhrM01DRC9wTDIyVmVPNXlPQWkrc3EwRk84UGswSmZ3TjJlNjc0?=
 =?utf-8?B?MUtRR094M3dqWjdtMnp3KzJSeFZpL0l3NTlSc0FnRXRSVHJwaTBxWkw0NEhS?=
 =?utf-8?B?Z21KU01CZFRHZitVUytteDJGT2JFYWRwYVhHWGpJVXVwTU51N3B4SlZOMlo5?=
 =?utf-8?B?OEQxMnFVVmE0KzQxSUIxd3NkSytlQjhYNVBuZ1llaHZJb2NidGloeDF1WExO?=
 =?utf-8?B?SXB2OEFEbFF5Z3M3S1ZrenVCVE9vSTJtN3pxbWFsSDBJZUd5ZTV4SXNkbjF1?=
 =?utf-8?B?bnBWZzg0TDZPcm9EQ2JZbWZFL0hxMkhLUjZ3c3ZGREJuckZ2bUdwdXZ5VzFU?=
 =?utf-8?Q?EcKBXMwB/fN3un2+rlDroY9gS3n8NyZhuUgx/HmNPDsi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 067dd5fe-8396-4a0d-21e5-08daccafbfc3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 17:34:03.7582
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wHkJ804ImtjL3RDW3+plqkHP2Y5933CA3Ak/iueVCGGh1ij9XAA+MYABwzWa2hvS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6883
X-Rspamd-Queue-Id: 6A6463ECF8
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_CC(0.00)[ndufresne.ca,chromium.org,pengutronix.de,fooishbar.org,gmail.com,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.56:from];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-mw2nam12on2056.outbound.protection.outlook.com:rdns,amd.com:dkim,ndufresne.ca:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: N2XFNUJOTK6OLOKZMQKSZ32TJL3G7Q4Y
X-Message-ID-Hash: N2XFNUJOTK6OLOKZMQKSZ32TJL3G7Q4Y
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N2XFNUJOTK6OLOKZMQKSZ32TJL3G7Q4Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjIuMTEuMjIgdW0gMTU6MzYgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBGcmksIE5v
diAxOCwgMjAyMiBhdCAxMTozMjoxOUFNIC0wODAwLCBSb2IgQ2xhcmsgd3JvdGU6DQo+PiBPbiBU
aHUsIE5vdiAxNywgMjAyMiBhdCA3OjM4IEFNIE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1
ZnJlc25lLmNhPiB3cm90ZToNCj4+PiBMZSBqZXVkaSAxNyBub3ZlbWJyZSAyMDIyIMOgIDEzOjEw
ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIGEgw6ljcml0IDoNCj4+Pj4+PiBETUEtQnVmIGxldCdz
IHRoZSBleHBvcnRlciBzZXR1cCB0aGUgRE1BIGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIgdXNlcyB0
bw0KPj4+Pj4+IGJlIGFibGUgdG8gZGlyZWN0bHkgZGVjaWRlZCB3aGVyZSBhIGNlcnRhaW4gb3Bl
cmF0aW9uIHNob3VsZCBnby4gRS5nLiB3ZQ0KPj4+Pj4+IGhhdmUgY2FzZXMgd2hlcmUgZm9yIGV4
YW1wbGUgYSBQMlAgd3JpdGUgZG9lc24ndCBldmVuIGdvIHRvIG1lbW9yeSwgYnV0DQo+Pj4+Pj4g
cmF0aGVyIGEgZG9vcmJlbGwgQkFSIHRvIHRyaWdnZXIgYW5vdGhlciBvcGVyYXRpb24uIFRocm93
aW5nIGluIENQVQ0KPj4+Pj4+IHJvdW5kIHRyaXBzIGZvciBleHBsaWNpdCBvd25lcnNoaXAgdHJh
bnNmZXIgY29tcGxldGVseSBicmVha3MgdGhhdA0KPj4+Pj4+IGNvbmNlcHQuDQo+Pj4+PiBJdCBz
b3VuZHMgbGlrZSB3ZSBzaG91bGQgaGF2ZSBhIGRtYV9kZXZfaXNfY29oZXJlbnRfd2l0aF9kZXYo
KSB3aGljaA0KPj4+Pj4gYWNjZXB0cyB0d28gKG9yIGFuIGFycmF5Pykgb2YgZGV2aWNlcyBhbmQg
dGVsbHMgdGhlIGNhbGxlciB3aGV0aGVyIHRoZQ0KPj4+Pj4gZGV2aWNlcyBuZWVkIGV4cGxpY2l0
IG93bmVyc2hpcCB0cmFuc2Zlci4NCj4+Pj4gTm8sIGV4YWN0bHkgdGhhdCdzIHRoZSBjb25jZXB0
IEknbSBwdXNoaW5nIGJhY2sgb24gdmVyeSBoYXJkIGhlcmUuDQo+Pj4+DQo+Pj4+IEluIG90aGVy
IHdvcmRzIGV4cGxpY2l0IG93bmVyc2hpcCB0cmFuc2ZlciBpcyBub3Qgc29tZXRoaW5nIHdlIHdv
dWxkDQo+Pj4+IHdhbnQgYXMgcmVxdWlyZW1lbnQgaW4gdGhlIGZyYW1ld29yaywgY2F1c2Ugb3Ro
ZXJ3aXNlIHdlIGJyZWFrIHRvbnMgb2YNCj4+Pj4gdXNlIGNhc2VzIHdoaWNoIHJlcXVpcmUgY29u
Y3VycmVudCBhY2Nlc3MgdG8gdGhlIHVuZGVybHlpbmcgYnVmZmVyLg0KPj4+IEknbSBub3QgcHVz
aGluZyBmb3IgdGhpcyBzb2x1dGlvbiwgYnV0IHJlYWxseSBmZWx0IHRoZSBuZWVkIHRvIGNvcnJl
Y3QgeW91IGhlcmUuDQo+Pj4gSSBoYXZlIHF1aXRlIHNvbWUgZXhwZXJpZW5jZSB3aXRoIG93bmVy
c2hpcCB0cmFuc2ZlciBtZWNoYW5pc20sIGFzIHRoaXMgaXMgaG93DQo+Pj4gR1N0cmVhbWVyIGZy
YW1ld29yayB3b3JrcyBzaW5jZSAyMDAwLiBDb25jdXJyZW50IGFjY2VzcyBpcyBhIHJlYWxseSBj
b21tb24gdXNlDQo+Pj4gY2FzZXMgYW5kIGl0IGlzIHF1aXRlIHdlbGwgZGVmaW5lZCBpbiB0aGF0
IGNvbnRleHQuIFRoZSBicmFja2V0aW5nIHN5c3RlbSAoaW4NCj4+PiB0aGlzIGNhc2UgY2FsbGVk
IG1hcCgpIHVubWFwKCksIHdpdGggZmxhZyBzdGF0aW5nIHRoZSB1c2FnZSBpbnRlbnRpb24gbGlr
ZSByZWFkcw0KPj4+IGFuZCB3cml0ZSkgaXMgY29tYmluZWQgdGhlIHRoZSByZWZjb3VudC4gVGhl
IGJhc2ljIHJ1bGVzIGFyZSBzaW1wbGU6DQo+PiBUaGlzIGlzIGFsbCBDUFUgb3JpZW50ZWQsIEkg
dGhpbmsgQ2hyaXN0aWFuIGlzIHRhbGtpbmcgYWJvdXQgdGhlIGNhc2UNCj4+IHdoZXJlIG93bmVy
c2hpcCB0cmFuc2ZlciBoYXBwZW5zIHdpdGhvdXQgQ1BVIGludm9sdmVtZW50LCBzdWNoIGFzIHZp
YQ0KPj4gR1BVIHdhaXRpbmcgb24gYSBmZW5jZQ0KPiBZZWFoIGZvciBwdXJlIGRldmljZTJkZXZp
Y2UgaGFuZG92ZXIgdGhlIHJ1bGUgcHJldHR5IG11Y2ggaGFzIHRvIGJlIHRoYXQNCj4gYW55IGNv
aGVyZW5jeSBtYW5hZ2VtZW50IHRoYXQgbmVlZHMgdG8gYmUgZG9uZSBtdXN0IGJlIGRvbmUgZnJv
bSB0aGUNCj4gZGV2aWNlIHNpZGUgKGZsdXNoaW5nIGRldmljZSBzaWRlIGNhY2hlcyBhbmQgc3R1
ZmYgbGlrZSB0aGF0KSBvbmx5LiBCdXQNCj4gdW5kZXIgdGhlIGFzc3VtcHRpb24gdGhhdCBfYWxs
XyBjcHUgc2lkZSBtYW5hZ2VtZW50IGhhcyBiZWVuIGRvbmUgYWxyZWFkeQ0KPiBiZWZvcmUgdGhl
IGZpcnN0IGRldmljZSBhY2Nlc3Mgc3RhcnRlZC4NCj4NCj4gQW5kIHRoZW4gdGhlIG1hcC91bm1h
cCByZXNwZWN0aXZlbHkgYmVnaW4vZW5kX2NwdV9hY2Nlc3MgY2FuIGJlIHVzZWQgd2hhdA0KPiBp
dCB3YXMgbWVhbnQgZm9yIHdpdGggY3B1IHNpZGUgaW52YWxpZGF0aW9uL2ZsdXNoaW5nIGFuZCBz
dHVmZiBsaWtlIHRoYXQsDQo+IHdoaWxlIGhhdmluZyBwcmV0dHkgY2xlYXIgaGFuZG92ZXIvb3du
ZXJzaGlwIHJ1bGVzIGFuZCBob3BlZnVsbHkgbm90IGRvaW5nDQo+IG5vIHVuZWNlc3NhcnkgZmx1
c2hlcy4gQW5kIGFsbCB0aGF0IHdoaWxlIGFsbG93aW5nIGRldmljZSBhY2NlcyB0byBiZQ0KPiBw
aXBlbGluZWQuIFdvcnN0IGNhc2UgdGhlIGV4cG9ydGVyIGhhcyB0byBpbnNlcnQgc29tZSBwaXBl
bGluZWQgY2FjaGUNCj4gZmx1c2hlcyBhcyBhIGRtYV9mZW5jZSBwaXBlbGluZWQgd29yayBvZiBp
dHMgb3duIGJldHdlZW4gdGhlIGRldmljZSBhY2Nlc3MNCj4gd2hlbiBtb3ZpbmcgZnJvbSBvbmUg
ZGV2aWNlIHRvIHRoZSBvdGhlci4gVGhhdCBsYXN0IHBhcnQgc3Vja3MgYSBiaXQgcmlnaHQNCj4g
bm93LCBiZWNhdXNlIHdlIGRvbid0IGhhdmUgYW55IGRtYV9idWZfYXR0YWNobWVudCBtZXRob2Qg
d2hpY2ggZG9lcyB0aGlzDQo+IHN5bmNpbmcgd2l0aG91dCByZWNyZWF0aW5nIHRoZSBtYXBwaW5n
LCBidXQgaW4gcmVhbGl0eSB0aGlzIGlzIHNvbHZlZCBieQ0KPiBjYWNoaW5nIG1hcHBpbmdzIGlu
IHRoZSBleHBvcnRlciAod2VsbCBkbWEtYnVmIGxheWVyKSBub3dhZGF5cy4NCj4NCj4gVHJ1ZSBj
b25jdXJyZW50IGFjY2VzcyBsaWtlIHZrL2NvbXB1dGUgZXhwZWN0cyBpcyBzdGlsbCBhIG1vZGVs
IHRoYXQNCj4gZG1hLWJ1ZiBuZWVkcyB0byBzdXBwb3J0IG9uIHRvcCwgYnV0IHRoYXQncyBhIHNw
ZWNpYWwgY2FzZSBhbmQgcHJldHR5IG11Y2gNCj4gbmVlZHMgaHcgdGhhdCBzdXBwb3J0cyBzdWNo
IGNvbmN1cnJlbnQgYWNjZXNzIHdpdGhvdXQgZXhwbGljaXQgaGFuZG92ZXINCj4gYW5kIGZlbmNp
bmcuDQo+DQo+IEFzaWRlIGZyb20gc29tZSBoaXN0b3JpY2FsIGFjY2lkZW50cyBhbmQgc3RpbGwg
YSBmZXcgd2FydHMsIEkgZG8gdGhpbmsNCj4gZG1hLWJ1ZiBkb2VzIHN1cHBvcnQgYm90aCBvZiB0
aGVzZSBtb2RlbHMuDQoNCldlIHNob3VsZCBoYXZlIGNvbWUgdXAgd2l0aCBkbWEtaGVhcHMgZWFy
bGllciBhbmQgbWFrZSBpdCBjbGVhciB0aGF0IA0KZXhwb3J0aW5nIGEgRE1BLWJ1ZiBmcm9tIGEg
ZGV2aWNlIGdpdmVzIHlvdSBzb21ldGhpbmcgZGV2aWNlIHNwZWNpZmljIA0Kd2hpY2ggbWlnaHQg
b3IgbWlnaHQgbm90IHdvcmsgd2l0aCBvdGhlcnMuDQoNCkFwYXJ0IGZyb20gdGhhdCBJIGFncmVl
LCBETUEtYnVmIHNob3VsZCBiZSBjYXBhYmxlIG9mIGhhbmRsaW5nIHRoaXMuIA0KUXVlc3Rpb24g
bGVmdCBpcyB3aGF0IGRvY3VtZW50YXRpb24gaXMgbWlzc2luZyB0byBtYWtlIGl0IGNsZWFyIGhv
dyANCnRoaW5ncyBhcmUgc3VwcG9zZWQgdG8gd29yaz8NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KPiAgIE9mIGNvdXJzZSBpbiB0aGUgY2FzZSBvZg0KPiBncHUvZHJtIGRyaXZlcnMsIHVzZXJz
cGFjZSBtdXN0IGtub3cgd2hhdHMgcG9zc2libGUgYW5kIGFjdCBhY2NvcmRpbmdseSwNCj4gb3Ro
ZXJ3aXNlIHlvdSBqdXN0IGdldCB0byBrZWVwIGFsbCB0aGUgcGllY2VzLg0KPiAtRGFuaWVsDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
