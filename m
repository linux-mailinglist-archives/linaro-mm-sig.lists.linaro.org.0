Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8A2529A01
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 May 2022 09:00:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6F8E4107F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 May 2022 07:00:00 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2080.outbound.protection.outlook.com [40.107.244.80])
	by lists.linaro.org (Postfix) with ESMTPS id C7D404105D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 06:59:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W1hqDVwAi51ho6P6GDCyP4PLHCX2cR67sEeHiT3VhdGOI9XMfyB8QawnSltx3+jta+MwbTTVrXJrDrXpOKqbGKQaMNcuCdXQFgBasfqU6EH2noaySQdCoT/o5m8h0gys2h9CFDxSenKkNVOWu60oiRdU5XbTLY6GyX+EeeDkmFb6qDK1H8ldgt0IMJ6Pqw5BwCYt3nblZpFw6nSjIDfXJ63fqNv4s0ssiVZ3elJy+CZNsTJ+uRAP/PDoEb3PDD8O1Jf3nLzzB2OQaICovoGXW5iqkD7J8nI1OKxumz428xOsL5RQeclqeV7uBdj5X9QUBrY5MIJzs+/VS34JyjRyTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6gMRQ9BQhC8ticeyu8kdODbzEkz/RkxWSfcAF5XfSs=;
 b=m/dxIBDiGsmyJ330TmW38K9F2GIqUt5B4SCh2EDnYSodMGTZFg+EOQioGdp65OxLv8W/PMg20zaPaMMcVZO3a5NaFxoUel/K4pJ4oCFehyKFCUXklqYK2+kNTIA6VrLfu2wsR8DYkud5pSk0/JfsMcPJk9e5Iyktmwh6m+3DQg03sCdi9OcWRIt3ZFn9D+O7kd/dbiADHea0ZtpMS3sX39ChkG4PHnOasschLSqwn0kqytg2Qt2IFa6NLG7fHUf75/gts/yVMvKJQcTqLjfAsEjqWVR/1XzZqIr/8hJ+sQqcn2h82ydicLd3qp7bhPZnEmGoSqx/4QgcJD7e8kQX+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6gMRQ9BQhC8ticeyu8kdODbzEkz/RkxWSfcAF5XfSs=;
 b=fTDLFYLqOgci15BfOAEoAniVlnvI+rHxUfNIu8JO2X4OcLtYuu/bETWeQ3h2b9iD3OXYwybZjXO2vtcLBoesGi4wbRaQMRwI/vHsInA1+3HW7oFF3NLSeW5wG37W7hgMNzsnkAjiOi7u3UBDYvj2ZZs98BpInN4HKCSltXrGah8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB3292.namprd12.prod.outlook.com (2603:10b6:5:18c::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.18; Tue, 17 May
 2022 06:59:52 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7146:65ee:8fd3:dd03]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7146:65ee:8fd3:dd03%4]) with mapi id 15.20.5250.018; Tue, 17 May 2022
 06:59:52 +0000
Message-ID: <d820893c-fa2e-3bac-88be-f39c06d89c01@amd.com>
Date: Tue, 17 May 2022 08:59:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "T.J. Mercier" <tjmercier@google.com>
References: <20220516171315.2400578-1-tjmercier@google.com>
 <175c5af3-9224-9c8e-0784-349dad9a2954@amd.com>
 <CABdmKX2GcgCs1xANYPBp8OEtk9qqH7AvCzpdppj9rHXvMqWSAw@mail.gmail.com>
 <0875fa95-3a25-a354-1433-201fca81ed3e@amd.com>
 <CABdmKX1+VYfdzyVYOS5MCsr4ptGTygmuUP9ikyh-vW6DgKk2kg@mail.gmail.com>
 <YoM9BAwybcjG7K/H@kroah.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YoM9BAwybcjG7K/H@kroah.com>
X-ClientProxiedBy: AS9PR06CA0207.eurprd06.prod.outlook.com
 (2603:10a6:20b:45d::34) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6679a98-47d6-4389-f45d-08da37d2d723
X-MS-TrafficTypeDiagnostic: DM6PR12MB3292:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR12MB329228066B93AE885739D40F83CE9@DM6PR12MB3292.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gtqmA8VwPEH9CwxwIzpfgxE6djtBxm7BXPPC/Q9yb2Fa96WcFlvVKSfAiLDQt5OHu5EmupX1LuceGgDGw3Uhf5eWN+micqp7N/3jcVr31T23Wn6iTKeGFl0OyAg1mHN2UZlUwiSS8A1prGJC51xdmUSU6fUNJSCI+fxv6ks2P4PlwU8sAIxcBPEO9H7miplnxbghVvV3GiVPV3Eh3b6CmRL5DJsomJ8MXKEdZ/L0OJzAzyrqmpoDXhYy8I+ta6D6uYz9XhUsfQ4/JkQ5ms+5PUHA55m7FYLNkMlDTr7quA0NuLUdZNh5gcZpbzHA67xOXKyy59ErCordBDWJdoasFs9JwDxU2OskxA+qlEMAuLCVIRimZUoBA1FhiFNLfAsDOQlrSG4VnsPp6bMTMbPXuzDoDnqQ9Nseyxa+dyGs8eDwZnBBDJFDOxWLxdxloH34XZciF8jKI99cOADTIbbEzcTkb4mYQ/Bi3W7RWsTL3wvo422y2PLm1RVRzYI5XF+tvRoEcpjyIGcK/nZGs1kaRN8NGdXdTJtL6lN/3GcltUEwBpmfHHgCtq8zZz8l34M7/cRX8HTmdr4Cm3Y8O+XiTOARutH6Yfd9a5NNWP0yjTLLuPzsgZss5Q0C204MU/GZ7mCQrocZLGwpf7dwu9jprJ6CPo2Y6Hs0m3SkJPheevJl+B8YSzeTaLT6FlZ9VhuL8zjJmjhowPAbYlP2xFghKWF/wMTzo8oIWnw4U4R0Yo8+r50c6l4d8fVFLjCd5676roN83sfSkmwGxXFa1bPZXJtsjXF5FkJtzDBkYluiQ/alLLYRcoiuGk+B/wswqOg/
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(966005)(508600001)(6512007)(6486002)(6506007)(6666004)(26005)(31696002)(45080400002)(8936002)(7416002)(316002)(86362001)(66574015)(110136005)(83380400001)(54906003)(36756003)(8676002)(4326008)(2616005)(66946007)(66556008)(66476007)(31686004)(2906002)(5660300002)(38100700002)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UEFRTmwrT3Q4SDVKcWc5KzFqd3E2ZE5YUXlLQ0ZsUFlEMER1SFNwZzlHMWF3?=
 =?utf-8?B?NnZRL0ZpSCtKTDBINDhjRmJ6UE9jMXJrS0ZQaTIxTk1kZmp2N05MNmpTbnBn?=
 =?utf-8?B?QjNEdEpEYUxsTzJyUzAxdWRSdG16ZkN1K1BYREtDSS9acVgzTlFWVDBkbzBN?=
 =?utf-8?B?clF1RXhHM1RmcGlBVUR1TitRd3kxYlp6R1JPVUhOUERDUnhpNUdCREoxZGVS?=
 =?utf-8?B?aFA4eHZDYk5hTnBQZFFKaFBKZXhUbHg5eUZwNHRkUm1RR3FsbmEwWFMrb3px?=
 =?utf-8?B?NWVUczdCeDE4VjZ6K0dyRzN4ZmdhekRNczliNlZvaWlNNFp5RTl2Y1RLaXY3?=
 =?utf-8?B?L1BicmNDNXBrRHMwK3EySVVLYUE4NGJJODR3bGxPdEUrK25NMFVQVDFVZlY0?=
 =?utf-8?B?UGFZSmJ6TnAra0Rlam1UYnJNUmdranhPR3I4d0ZYbW1NODRQOFFRSG5uZFJ4?=
 =?utf-8?B?ZStEeXErZFBWVHZ6ZnkyaUJtRlFjOFFtZHJWaWNDRUZmYTFzSENxbFRrcXhN?=
 =?utf-8?B?MGlwL1BzdDJsWGFLUTk5WnVRYmpDbjhROVdDWEhLNXNxaXlIVnYvRDNQRTJk?=
 =?utf-8?B?NnRHaE5GVGoxNUVneVRaNFpIT2NTWlFoU002QW5ocFVIYjl5cklaNElWdjBK?=
 =?utf-8?B?R2RQTnk5UUpaVXhISTdpTHhORktYWlQ4S1JQczZzU0laZkRFZHZrK3V3SW1H?=
 =?utf-8?B?MUlkcmVnWGFoUGdGNXU2NlpJSXlzL3RnTDh4dUg1anlvYTRMVUdjZHlhek9m?=
 =?utf-8?B?eEF0YUFSV0lBUXVXaGpEQmVEMWhQV1dZZzJsRDQ1alpHRmhwRDVvcHk5b2FE?=
 =?utf-8?B?d1poTjkrdVRxb3lEZ2pFY0pMQVRoVFN6SEd3UEIzaC9WWU9naTBmSHNJKyt6?=
 =?utf-8?B?b1lPRHp6WHBBWnBuaE95czdTaEc2SGdKUEpMcVFnNHdZaTFnRHhyVWxGaWVC?=
 =?utf-8?B?QjRTQlFQUjh1bE9YZ0YyMk1HRUptcnQxVnR3RmtZT0ZrZWUrcHhsNHgvSDBR?=
 =?utf-8?B?WCsvZGkwb1doMzlBbXZLWE0zR242WWQ3dmxrY2YxZENhVC9uV0U3N2E3WHh5?=
 =?utf-8?B?V3ZVdDVGZnYyazhDWmVCNlE1WEZEd29Eb2MwVXB4aVd5VldlcDM2MDNEa0sx?=
 =?utf-8?B?Wkk1NmZ3WUlFeW43d1VMSnFDdlRnMTNsSjBJQjZsRkkyU2dBQ1JSWG5KaHQ5?=
 =?utf-8?B?SDdHMzRyQ09maVhzdzVQQk9QWk1KM1ZXTlFVM1AyTExtYjd2cmk5bjdkK05k?=
 =?utf-8?B?UVBGbHZxangzOHBwZzBKenQ4MGhDU2c5TFBPK0U4akFGd1hnWGhHdGtDWm02?=
 =?utf-8?B?TWpvYmE4UHZsUW5WRnFEWm9SMjRTWXdZRUJYZ0YzRUVUMVJXZkhBdkM2NHR5?=
 =?utf-8?B?anNOZmwwUWFiblcreis0bXdyMWN0aDRxV01iWHJNcHFSb1dMdVVlSmFVRVMy?=
 =?utf-8?B?cnVjN2FUQjBzM2NWT2JKSDErVlM0TFN6bzNyLzVIVW9qTUh1aEZid2VZd0RP?=
 =?utf-8?B?dHJpL2Y5eFhTcUhYRWt4ajZFTW54ZitkOElXOHVDdEZPZ25aUjRIYzNiZWxo?=
 =?utf-8?B?OHNQZUVUTVFxd0krVVBlNWhoZ25HUDY5emlHaDlPRWJ1b0JNMTRJcW9QSDY3?=
 =?utf-8?B?MHprbXBpT3pWTWQ5OEdjYXVYbGtmeFRXbnNpSXg1MU9DZithWGV4Q25ndTJl?=
 =?utf-8?B?ZDZoOGRudmc1c1JzS1BjUUtQSEx1UXNWZ1ZoeGUvS3JDVnlkRFpNMjFoNmly?=
 =?utf-8?B?T0NselZnZEpCb09NaFIrRy94U2JEenpETUtqOWNpL0pxMGtzcjBIeWhQaDRn?=
 =?utf-8?B?QUFrTDluV20zK2pCZ0xOa05NeXlPVVF0cVhwTm5Obm5zTWJ1U21mUytoOUtM?=
 =?utf-8?B?ME5IVXBya3ZaSWtMT1NFR3JsRXpmRmUvUDlWNVZHOW5EQXZXSnRzaW1vSlpR?=
 =?utf-8?B?ZWIxNE9TaEgzSm9FZlMzQ0k5TU95UUtFZTljaGlIU3hlVUh6eUlsVUd4Tkdn?=
 =?utf-8?B?cHZ0Sy9NYVIzMWJ0U3U3SkE4dXNZNUVoaHovemN1NmlSclNRVWkyMFNlR2U0?=
 =?utf-8?B?Ly9OaHZPanhnUVBmTVpUWTR1MnVXanA1dXhNVExkY3BSTkNVQ2h0WUlHOGps?=
 =?utf-8?B?MXpOb3BHVzNLY21oaTJTVW44R0d1SVhmUTVXRDR2ZXBGV211N2phUmkzVlFD?=
 =?utf-8?B?Z1VlcWszeWZGU2VnSkVQb29JdEJxNmo0a0hsV1duM291TkFBL0Rkc3A4RmFr?=
 =?utf-8?B?cXhtN2RVSTB3WEg4T01pWWFHSndhOTVmejJoV1NtZmdFSDdoTC9YS3hUdmQw?=
 =?utf-8?B?RXBZMSsrVm9QVk8renNDRjg2UVhiM2VId2dtT05qRTI1ekNiUS9ZUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6679a98-47d6-4389-f45d-08da37d2d723
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2022 06:59:52.0651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1vgNWzahnMNFdQeHOCab+XXvK5ABVwDvjSgJ2MCeGPITv4einz/dKKLrUXOwswYh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3292
Message-ID-Hash: FVM6SWQIWJUUYFIDB2FWJ5IUJMOLODN7
X-Message-ID-Hash: FVM6SWQIWJUUYFIDB2FWJ5IUJMOLODN7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Suren Baghdasaryan <surenb@google.com>, Kalesh Singh <kaleshsingh@google.com>, Minchan Kim <minchan@google.com>, Greg Kroah-Hartman <gregkh@google.com>, John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Hridya Valsaraju <hridya@google.com>, kernel-team@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Move sysfs work out of DMA-BUF export path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FVM6SWQIWJUUYFIDB2FWJ5IUJMOLODN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMDUuMjIgdW0gMDg6MTMgc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46DQo+IE9uIE1v
biwgTWF5IDE2LCAyMDIyIGF0IDA1OjA4OjA1UE0gLTA3MDAsIFQuSi4gTWVyY2llciB3cm90ZToN
Cj4+IFtTTklQXQ0KPj4+Pj4+IEZpeGVzOiBiZGI4ZDA2ZGZlZmQgKCJkbWFidWY6IEFkZCB0aGUg
Y2FwYWJpbGl0eSB0byBleHBvc2UgRE1BLUJVRiBzdGF0cyBpbiBzeXNmcyIpDQo+Pj4+Pj4gT3Jp
Z2luYWxseS1ieTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQo+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4+Pj4+
Pg0KPj4+Pj4+IC0tLQ0KPj4+Pj4+IFNlZSB0aGUgb3JpZ2luYWxseSBzdWJtaXR0ZWQgcGF0Y2gg
YnkgSHJpZHlhIFZhbHNhcmFqdSBoZXJlOg0KPj4+Pj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtz
LnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxrbWwub3JnJTJGbGtt
bCUyRjIwMjIlMkYxJTJGNCUyRjEwNjYmYW1wO2RhdGE9MDUlN0MwMSU3Q2NocmlzdGlhbi5rb2Vu
aWclNDBhbWQuY29tJTdDNjFkN2QzYWNiZTVmNDdjN2QwZTYwOGRhMzdjYzVlZDclN0MzZGQ4OTYx
ZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3ODgzNjQ4MjEyODc4NDQwJTdD
VW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJ
aUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0MmYW1wO3NkYXRh
PUhkU0hBMnZiQmtCZ2RLeFBYSXA1N0VIVzQ5eW9NamdtaWdrVk9LZVRhc0klM0QmYW1wO3Jlc2Vy
dmVkPTANCj4+Pj4+Pg0KPj4+Pj4+IHYyIGNoYW5nZXM6DQo+Pj4+Pj4gLSBEZWZlciBvbmx5IHN5
c2ZzIGNyZWF0aW9uIGluc3RlYWQgb2YgY3JlYXRpb24gYW5kIHRlYXJkb3duIHBlcg0KPj4+Pj4+
IENocmlzdGlhbiBLw7ZuaWcNCj4+Pj4+Pg0KPj4+Pj4+IC0gVXNlIGEgd29yayBxdWV1ZSBpbnN0
ZWFkIG9mIGEga3RocmVhZCBmb3IgZGVmZXJyZWQgd29yayBwZXINCj4+Pj4+PiBDaHJpc3RpYW4g
S8O2bmlnDQo+Pj4+Pj4gLS0tDQo+Pj4+Pj4gICAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5
c2ZzLXN0YXRzLmMgfCA1NiArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0NCj4+Pj4+PiAgICAg
aW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAgICAgICB8IDE0ICsrKysrKy0NCj4+Pj4+
PiAgICAgMiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkN
Cj4+Pj4+Pg0KPj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNm
cy1zdGF0cy5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuYw0KPj4+Pj4+
IGluZGV4IDJiYmEwYmFiY2I2Mi4uNjdiMGEyOTgyOTFjIDEwMDY0NA0KPj4+Pj4+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMNCj4+Pj4+PiArKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQo+Pj4+Pj4gQEAgLTExLDYgKzExLDcgQEAN
Cj4+Pj4+PiAgICAgI2luY2x1ZGUgPGxpbnV4L3ByaW50ay5oPg0KPj4+Pj4+ICAgICAjaW5jbHVk
ZSA8bGludXgvc2xhYi5oPg0KPj4+Pj4+ICAgICAjaW5jbHVkZSA8bGludXgvc3lzZnMuaD4NCj4+
Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPg0KPj4+Pj4+DQo+Pj4+Pj4gICAgICNp
bmNsdWRlICJkbWEtYnVmLXN5c2ZzLXN0YXRzLmgiDQo+Pj4+Pj4NCj4+Pj4+PiBAQCAtMTY4LDEw
ICsxNjksNDYgQEAgdm9pZCBkbWFfYnVmX3VuaW5pdF9zeXNmc19zdGF0aXN0aWNzKHZvaWQpDQo+
Pj4+Pj4gICAgICAgICBrc2V0X3VucmVnaXN0ZXIoZG1hX2J1Zl9zdGF0c19rc2V0KTsNCj4+Pj4+
PiAgICAgfQ0KPj4+Pj4+DQo+Pj4+Pj4gK3N0YXRpYyB2b2lkIHN5c2ZzX2FkZF93b3JrZm4oc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPj4+Pj4+ICt7DQo+Pj4+Pj4gKyAgICAgc3RydWN0IGRt
YV9idWZfc3lzZnNfZW50cnkgKnN5c2ZzX2VudHJ5ID0NCj4+Pj4+PiArICAgICAgICAgICAgIGNv
bnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgZG1hX2J1Zl9zeXNmc19lbnRyeSwgc3lzZnNfYWRkX3dv
cmspOw0KPj4+Pj4+ICsgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWYgPSBzeXNmc19lbnRyeS0+
ZG1hYnVmOw0KPj4+Pj4+ICsNCj4+Pj4+PiArICAgICAvKg0KPj4+Pj4+ICsgICAgICAqIEEgZG1h
YnVmIGlzIHJlZi1jb3VudGVkIHZpYSBpdHMgZmlsZSBtZW1iZXIuIElmIHRoaXMgaGFuZGxlciBo
b2xkcyB0aGUgb25seQ0KPj4+Pj4+ICsgICAgICAqIHJlZmVyZW5jZSB0byB0aGUgZG1hYnVmLCB0
aGVyZSBpcyBubyBuZWVkIGZvciBzeXNmcyBrb2JqZWN0IGNyZWF0aW9uLiBUaGlzIGlzIGFuDQo+
Pj4+Pj4gKyAgICAgICogb3B0aW1pemF0aW9uIGFuZCBhIHJhY2U7IHdoZW4gdGhlIHJlZmVyZW5j
ZSBjb3VudCBkcm9wcyB0byAxIGltbWVkaWF0ZWx5IGFmdGVyDQo+Pj4+Pj4gKyAgICAgICogdGhp
cyBjaGVjayBpdCBpcyBub3QgaGFybWZ1bCBhcyB0aGUgc3lzZnMgZW50cnkgd2lsbCBzdGlsbCBn
ZXQgY2xlYW5lZCB1cCBpbg0KPj4+Pj4+ICsgICAgICAqIGRtYV9idWZfc3RhdHNfdGVhcmRvd24s
IHdoaWNoIHdvbid0IGdldCBjYWxsZWQgdW50aWwgdGhlIGZpbmFsIGRtYWJ1ZiByZWZlcmVuY2UN
Cj4+Pj4+PiArICAgICAgKiBpcyByZWxlYXNlZCwgYW5kIHRoYXQgY2FuJ3QgaGFwcGVuIHVudGls
IHRoZSBlbmQgb2YgdGhpcyBmdW5jdGlvbi4NCj4+Pj4+PiArICAgICAgKi8NCj4+Pj4+PiArICAg
ICBpZiAoZmlsZV9jb3VudChkbWFidWYtPmZpbGUpID4gMSkgew0KPj4+Pj4gUGxlYXNlIGNvbXBs
ZXRlbHkgZHJvcCB0aGF0LiBJIHNlZSBhYnNvbHV0ZWx5IG5vIGp1c3RpZmljYXRpb24gZm9yIHRo
aXMNCj4+Pj4+IGFkZGl0aW9uYWwgY29tcGxleGl0eS4NCj4+Pj4+DQo+Pj4+IFRoaXMgY2FzZSBn
ZXRzIGhpdCBhcm91bmQgNSUgb2YgdGhlIHRpbWUgaW4gbXkgdGVzdGluZyBzbyB0aGUgZWxzZSBp
cw0KPj4+PiBub3QgYSBjb21wbGV0ZWx5IHVudXNlZCBicmFuY2guDQo+Pj4gV2VsbCBJIGNhbiBv
bmx5IHJlcGVhdCBteXNlbGY6IFRoaXMgbWVhbnMgdGhhdCB5b3VyIHVzZXJzcGFjZSBpcw0KPj4+
IHNldmVyZWx5IGJyb2tlbiENCj4+Pg0KPj4+IERNQS1idWYgYXJlIG1lYW50IHRvIGJlIGxvbmcg
bGl2aW5nIG9iamVjdHMNCj4+IFRoaXMgcGF0Y2ggYWRkcmVzc2VzIGV4cG9ydCAqbGF0ZW5jeSog
cmVnYXJkbGVzcyBvZiBob3cgbG9uZy1saXZlZCB0aGUNCj4+IG9iamVjdCBpcy4gRXZlbiBhIHNp
bmdsZSwgbG9uZy1saXZlZCBleHBvcnQgd2lsbCBiZW5lZml0IGZyb20gdGhpcw0KPj4gY2hhbmdl
IGlmIGl0IHdvdWxkIG90aGVyd2lzZSBiZSBibG9ja2VkIG9uIGFkZGluZyBhbiBvYmplY3QgdG8g
c3lzZnMuDQo+PiBJIHRoaW5rIGF0dGVtcHRpbmcgdG8gaW1wcm92ZSB0aGlzIGxhdGVuY3kgc3Rp
bGwgaGFzIG1lcml0Lg0KPiBGaXhpbmcgdGhlIGxhdGVuY3kgaXMgbmljZSwgYnV0IGFzIGl0J3Mg
anVzdCBwdXNoaW5nIHRoZSBuZWVkZWQgd29yayBvZmYNCj4gdG8gYW5vdGhlciBjb2RlIHBhdGgs
IGl0IHdpbGwgdGFrZSBsb25nZXIgb3ZlcmFsbCBmb3IgdGhlIHN5c2ZzIHN0dWZmIHRvDQo+IGJl
IHJlYWR5IGZvciB1c2Vyc3BhY2UgdG8gc2VlLg0KPg0KPiBQZXJoYXBzIHdlIG5lZWQgdG8gc3Rl
cCBiYWNrIGFuZCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjb2RlIGlzIHN1cHBvc2VkDQo+IHRvIGJl
IGRvaW5nLiAgQXMgSSByZWNhbGwsIGl0IHdhcyBjcmVhdGVkIGJlY2F1c2Ugc29tZSBzeXN0ZW1z
IGRvIG5vdA0KPiBhbGxvdyBkZWJ1Z2ZzIGFueW1vcmUsIGFuZCB0aGV5IHdhbnRlZCB0aGUgZGVi
dWdnaW5nIGluZm9ybWF0aW9uIHRoYXQNCj4gdGhlIGRtYWJ1ZiBjb2RlIHdhcyBleHBvc2luZyB0
byBkZWJ1Z2ZzIG9uIGEgIm5vcm1hbCIgc3lzdGVtLiAgTW92aW5nDQo+IHRoYXQgbG9naWMgdG8g
c3lzZnMgbWFkZSBzZW5zZSwgYnV0IG5vdyBJIGFtIHdvbmRlcmluZyB3aHkgd2UgZGlkbid0IHNl
ZQ0KPiB0aGVzZSBpc3N1ZXMgaW4gdGhlIGRlYnVnZnMgY29kZSBwcmV2aW91c2x5Pw0KDQpXZWxs
LCBJIHRoaW5rIHRoYXQgc29tZSBrZXkgaW5mb3JtYXRpb24gaXMgdGhhdCBhZGRpbmcgdGhlIHN5
c2ZzIHN1cHBvcnQgDQp3YXMganVzdGlmaWVkIHdpdGggdGhlIGFyZ3VtZW50IHRoYXQgdGhpcyBp
cyBub3Qgb25seSB1c2VkIGZvciBkZWJ1Z2dpbmcuDQoNCklmIGl0IHdvdWxkIGJlIHVzZWQgb25s
eSBmb3IgZGVidWdnaW5nIHRoZW4gZGVidWdmcyB3b3VsZCB0aGUgcmlnaHQgDQpjaG9pY2UgZm9y
IHRoaXMuIElmIGRlYnVnZnMgaXMgdGhlbiBub3QgYXZhaWxhYmxlIGluIHlvdXIgZW52aXJvbm1l
bnQgDQp0aGVuIHlvdSBzaG91bGQgKm5vdCogYXNrIHRoZSBrZXJuZWwgdG8gd29yayBhcm91bmQg
dGhhdC4gSW5zdGVhZCB3ZSANCnNob3VsZCBkaXNjdXNzIHdoeSB5b3Ugd2FudCB0byBkaXNhYmxl
IHNvbWUgZGVidWdnaW5nIGFjY2VzcywgYnV0IG5vdCANCmFsbCBvZiB0aGF0Lg0KDQpTbyBmb3Ig
bm93IGxldCdzIGFzc3VtZSB0aGF0IHRoaXMgaXMgYWxzbyB1c2VkIGZvciBhY2NvdW50aW5nLCBl
LmcuIHdoZW4gDQp1c2Vyc3BhY2Ugd2FudHMgdG8ga25vdyBob3cgbWFueSBETUEtYnVmcyBvZiB3
aGljaCBzaXplIGFyZSBmbHlpbmcgDQphcm91bmQgdG8gbWFrZSBkZWNpc2lvbnMgbGlrZSB3aGlj
aCBwcm9jZXNzIHRvIHB1dCBpbnRvIGJhY2tncm91bmQgb3IgDQp3aGljaCB0byBzd2FwIG91dCBi
YXNlZCBvbiB0aGF0IGluZm9ybWF0aW9uLg0KDQo+IFBlcmhhcHMgd2Ugc2hvdWxkIGdvIGp1c3Qg
b25lIHN0ZXAgZnVydGhlciBhbmQgbWFrZSBhIG1pc2MgZGV2aWNlIG5vZGUNCj4gZm9yIGRtYWJ1
ZyBkZWJ1Z2dpbmcgaW5mb3JtYXRpb24gdG8gYmUgaW4gYW5kIGp1c3QgaGF2ZSB1c2Vyc3BhY2UN
Cj4gcG9sbC9yZWFkIG9uIHRoZSBkZXZpY2Ugbm9kZSBhbmQgd2Ugc3BpdCB0aGUgaW5mbyB0aGF0
IHVzZWQgdG8gYmUgaW4NCj4gZGVidWdmcyBvdXQgdGhyb3VnaCB0aGF0PyAgVGhhdCB3YXkgdGhp
cyBvbmx5IGFmZmVjdHMgc3lzdGVtcyB3aGVuIHRoZXkNCj4gd2FudCB0byByZWFkIHRoZSBpbmZv
cm1hdGlvbiBhbmQgbm90IG5vcm1hbCBjb2RlIHBhdGhzPyAgWWVhaCB0aGF0J3MgYQ0KPiBoYWNr
LCBidXQgdGhpcyB3aG9sZSB0aGluZyBmZWVscyBvdmVybHkgY29tcGxleCBub3cuDQoNClllYWgs
IHRvdGFsbHkgYWdyZWUgb24gdGhlIGNvbXBsZXhpdHkgbm90ZS4gSSdtIGp1c3QgYWJzb2x1dGVs
eSBub3Qga2VlbiANCnRvIGFkZCBoYWNrIG92ZXIgaGFjayBvdmVyIGhhY2sgdG8gbWFrZSBzb21l
dGhpbmcgd29yayB3aGljaCBmcm9tIG15IA0KcG9pbnQgb2YgdmlldyBoYXMgc29tZSBzZXJpb3Vz
IGlzc3VlcyB3aXRoIGl0J3MgZGVzaWduLg0KDQpGb3IgZXhhbXBsZSB0cnlpbmcgdG8gZG8gYWNj
b3VudGluZyBiYXNlZCBvbiBETUEtYnVmcyBpcyBleHRyZW1lbHkgDQpxdWVzdGlvbmFibGUgdG8g
YmVnaW4gd2l0aC4gU2VlIGEgbW9kZXJuIGdhbWUgZm9yIGV4YW1wbGUgY2FuIGhhdmUgDQpiZXR3
ZWVuIDEwayBhbmQgMTAwayBvZiBkaWZmZXJlbnQgYnVmZmVycywgcmVzZXJ2aW5nIG9uZSBmaWxl
IGRlc2NyaXB0b3IgDQpmb3IgZWFjaCBvZiB0aG9zZSBvYmplY3RzIGlzIGFic29sdXRlbHkgbm90
IGdvaW5nIHRvIHdvcmsuDQoNClNvIG15IHJlcXVlc3QgaXMgdG8gcGxlYXNlIGRlc2NyaWJlIHlv
dXIgZnVsbCB1c2UgY2FzZSBhbmQgbm90IGp1c3Qgd2h5IA0KeW91IHRoaW5rIHRoaXMgcGF0Y2gg
aXMganVzdGlmaWVkLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IHRoYW5rcywNCj4N
Cj4gZ3JlZyBrLWgNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
